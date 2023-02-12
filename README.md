# Automate Scan.
This repository contains a tool for automating the process of scanning for vulnerabilities in a list of domains. The tool is designed to streamline the process of identifying potential security weaknesses and provide an easy-to-read report of its findings.

### Requirements Locally.
* bash
* Nmap

### Installation Locally.
Clone the repository:
```
git clone https://github.com/capstone-project-cybersecurity/automate-scan.git
cd $PWD/automate-scan
```

### Usage Locally.
To run the tool, simply execute the following command in the repository directory:
```
./automate-scan.sh
```

The tool will then run a series of scans based of the list.txt and generate a output of the finding.

### Requirements with Docker.
To run the tool inside a container is going to be more scalable and portable.
* docker
* bash

### Installation with Docker.
Clone the repository:
```
git clone https://github.com/capstone-project-cybersecurity/automate-scan.git
cd $PWD/automate-scan
docker build -t automate-scan . && docker run automate-scan
```

### Requirements with Docker and Jenkins as automation tool.
To run the tool inside a container is going to be more scalable and portable. Also we can integrate with automation tool.
* docker
* docker compose
* Jenkins as a container

### Installation with Docker and Jenkins.
Clone the repository:
```
git clone https://github.com/capstone-project-cybersecurity/automate-scan.git
cd $PWD/automate-scan/ci
docker build -t jenkins-customized-project .
docker images | grep jenkins-customized-project # pick up the imageID
docker tag d15ee13f395c danielgomeza/jenkins-customized-project
docker login
docker push danielgomeza/jenkins-customized-project:latest
docker-compose up -d
curl http://localhost:8080 # test that you already can reach jenkins web locally
```

### Contributing
We welcome contributions to this project. If you would like to contribute, please fork the repository and create a pull request with your changes.

### License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).