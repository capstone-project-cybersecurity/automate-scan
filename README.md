# Automate Scan
This repository contains a tool for automating the process of scanning for vulnerabilities in a list of domains. The tool is designed to streamline the process of identifying potential security weaknesses and provide an easy-to-read report of its findings.

### Requirements Locally
* bash
* Nmap

### Installation Locally
Clone the repository:
```
git clone https://github.com/capstone-project-cybersecurity/automate-scan.git
cd $PWD/automate-scan
```

### Usage Locally
To run the tool, simply execute the following command in the repository directory:
```
./automate-scan.sh
```

The tool will then run a series of scans based of the list.txt and generate a output of the finding.

### Requirements with Docker
To run the tool inside a container is going to be more scalable and portable.
* docker
* bash
* nmap

### Installation with Docker
Clone the repository:
```
git clone https://github.com/capstone-project-cybersecurity/automate-scan.git
cd $PWD/automate-scan
docker build -t automate-scan . && docker run automate-scan
```

### Contributing
We welcome contributions to this project. If you would like to contribute, please fork the repository and create a pull request with your changes.

### License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).