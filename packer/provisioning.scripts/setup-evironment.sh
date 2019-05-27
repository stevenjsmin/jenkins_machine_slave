#! /bin/sh

# Set Essencial environment variables
sudo cp /home/ec2-user/cicd-tools/appianci.sh /etc/profile.d/
sudo chmod 644 /etc/profile.d/appianci.sh

# Set /etc/hosts
sudo echo "198.18.2.228    yum.nbnnal.local" >> /etc/hosts

# Set Database URL
sudo sed -i "/DB.URL=/ s/=.*/=appiancicd-main.abcd.ap-southeast-2.rds.amazonaws.com:3306/" /home/jenkins/wars/appiancicd.sys.properties
sudo chown jenkins:jenkins /home/jenkins/wars/appiancicd.sys.properties

# Set default password. It's for support access GitLab and JFrog without password
sudo cp /home/ec2-user/cicd-tools/.netrc ~jenkins/
sudo cp /home/ec2-user/cicd-tools/.netrc ~ec2-user/
sudo cp /home/ec2-user/cicd-tools/.netrc /root/

sudo chown jenkins:jenkins /home/jenkins/.netrc
sudo chown ec2-user:ec2-user /home/ec2-user/.netrc
sudo chown root:root /root/.netrc