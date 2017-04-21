case node[:platform]
when "ubuntu","debian"
  package "docker.io" do
    action :install
  end
when 'centos','redhat','fedora','amazon'
  package "docker-engine" do
    action :install
  end
end

service "docker" do
  action :start
end

execute 'docker' do
  user "root"
  command 'usermod -aG docker ec2-user'
end