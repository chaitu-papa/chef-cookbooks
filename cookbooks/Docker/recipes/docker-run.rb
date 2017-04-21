
//Run Docker tomcat instance
execute 'run' do
  user "ec2-user"
  command 'docker run  --name helloworld -d -p 8086:8080 helloworld:tomcat'
end

 