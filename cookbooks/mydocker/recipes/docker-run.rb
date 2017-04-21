
#Run Docker tomcat instance
execute 'run' do
  user "root"
  command 'docker run  --name helloworld -d -p 8086:8080 helloworld:tomcat'
end

 