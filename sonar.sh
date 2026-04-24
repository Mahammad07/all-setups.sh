#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.4.0.121862.zip
unzip sonarqube-26.4.0.121862.zip
sudo dnf install java-21-amazon-corretto -y 
#amazon-linux-extras install java-openjdk11 -y
useradd sonar
mv sonarqube-26.4.0.121862 sonarqube
chown sonar:sonar sonarqube -R
chmod 777 sonarqube -R
su - sonar

#run this on server manually
#sh /opt/sonarqube/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
