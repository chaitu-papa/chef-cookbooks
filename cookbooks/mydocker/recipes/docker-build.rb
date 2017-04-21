bash "docker-cleanup" do
   user "root"
   code <<-EOH
      if docker ps -f "name=helloworld" -q -a ;     
	then
        docker stop helloworld
		  sleep 3
       docker rm helloworld
       sleep 3
      fi
 
    EOH
 end


cookbook_file '/tmp/Dockerfile' do
source "Dockerfile"
mode "0644"
end
cookbook_file '/tmp/tomcat-users.xml' do
source "tomcat-users.xml"
mode "0644"
end
execute 'build' do
  user "root"
  command 'docker build -t "helloworld:tomcat" /tmp'
end
