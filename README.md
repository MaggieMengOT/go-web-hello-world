# Meng Xiangyi's demo project

### Task 0: Install a ubuntu 16.04 server 64-bit

1. Download virtualbox from https://www.virtualbox.org/
2. Install virtualbox.
3. Configure NAT network https://www.techbeatly.com/2021/06/how-to-create-and-use-natnetwork-in-virtualbox.html
4. Configure port forwarding https://www.golinuxcloud.com/configure-nat-port-forwarding-virtualbox-cli/#Configure_port_forwarding_for_NAT_using_GUI
5. Can't find image http://releases.ubuntu.com/16.04/ubuntu-16.04.6-server-amd64.iso. Download http://releases.ubuntu.com/16.04/ubuntu-16.04.7-server-amd64.iso instead
6. Install ubuntu 16.04
7. Install openssh server https://ubuntu.com/server/docs/service-openssh#:~:text=OpenSSH%20is%20a%20powerful%20collection%20of%20tools%20for,how%20to%20change%20them%20on%20your%20Ubuntu%20system.

### Task 1: Update system

1. Ssh to host with "ssh vcap@127.0.0.1 -p 2222"
2. sudo apt update 
3. sudo apt upgrade

### Task 2: install gitlab-ce version in the host

1. Install gitlab-ce https://about.gitlab.com/install/#ubuntu
2. set external_url=http://127.0.0.1

### Task 3: create a demo group/project in gitlab

1. Create new user in sign up page.
2. Login using new user.
3. Click menu tab "Groups" and choose "create group" to create new group "demo".
4. Click menu tab "Projects" and choose "create blank project" to create new project "go-web-hello-world".
5. Clone the project to local host.
6. Create main.go and commit/push it to project.

### Task 4: build the app and expose ($ go run) the service to 8081 port

1. Install go: sudo apt install golang-go
2. cd project directory and run "go run main.go".

### Task 5: install docker

1. Install docker https://docs.docker.com/install/linux/docker-ce/ubuntu/

### Task 6: run the app in container

1. Modify gitlab configuration to change sidekiq port from 8082 to 8083 "vi /etc/gitlab/gitlab.rb"
2. sudo gitlab-ctl reconfigure
3. Create dockerfile.
4. Build docker image: sudo docker build -t lemonmxy1/go-web-hello-world:v0.1 .
5. Run docker container: sudo docker run -it  -p 8082:8081/tcp lemonmxy1/go-web-hello-world:v0.1

### Task 7: push image to dockerhub

1. docker push lemonmxy1/go-web-hello-world:v0.1







