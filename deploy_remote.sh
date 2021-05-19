#!/bin/bash 
#deploy_remote.sh
java -version
if [[$? !=0 ]] 
then 
  sudo amazon-linux-extras install -y java-openjdk11 
fi

#On copie les fichiers sur la machine distante
scp ec2-user@ec2-3-17-183-87.us-east-2.compute.amazonaws.com
helloWorld.class

#On exécute l’application sur la machine distante
ssh ec2-user@ec2-3-17-183-87.us-east-2.compute.amazonaws.com -c 'cd /app && java helloWorld'
