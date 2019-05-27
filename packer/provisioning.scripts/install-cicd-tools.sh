#! /bin/sh

# Install CICD Tools
sudo tar xvfz /home/ec2-user/cicd-tools/cicd-tools-deploymentManager-20190527.tar.gz -C /opt/
sudo tar xvfz /home/ec2-user/cicd-tools/cicd-tools-fitnesse-20190527.tar.gz -C /opt/
sudo tar xvfz /home/ec2-user/cicd-tools/cicd-tools-java-20190527.tar.gz -C /opt/
sudo tar xvfz /home/ec2-user/cicd-tools/cicd-tools-jenkins-20190527.tar.gz -C /opt/

# Install Web-Application for Appian CICD Portal
sudo tar xvfz /home/ec2-user/cicd-tools/cicd-tools-wars-20190527.tar.gz -C /home/jenkins

