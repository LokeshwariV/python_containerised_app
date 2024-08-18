control "deploy-docker_compose" do
  title ""

  describe docker_container(name: '') do
    it { should exist }
    it { should be_running }
  end

  describe docker_container(name: '') do
    it { should exist }
    it { should be_running }
  end
end
