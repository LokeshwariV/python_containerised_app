region = node['docker_compose']['region']
aws_id = node['docker_compose']['aws_id']
git_url = node['docker_compose']['git_url']

package 'Update package repository and install Docker' do
  package_name ['docker', 'git']
  action :install
end

service 'docker' do
  action [:enable, :start]
end

execute 'Authenticate Docker to ECR' do
  command "aws ecr get-login-password --region #{region} | docker login --username AWS --password-stdin #{aws_id}.dkr.ecr.<your-region>.amazonaws.com"
  sensitive true
end

execute 'Pull Docker image from ECR' do
  command "docker pull #{aws_id}.dkr.ecr.<your-region>.amazonaws.com/<your-repository>:<tag>"
end

git 'git repo' do
  repository "#{git_url}"
  revision 'main'
  action :sync
end

execute 'Run Docker Compose' do
  cwd '/path/to/docker-compose-directory'
  command 'docker-compose up -d'
end