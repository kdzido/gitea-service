Purpose: Self-sustained Gitea service for hosting Git repositories on own laptop.

Generate self-signed X509 certs for https:
cd ssl/
./generate-certs.sh
cd ..

Run:
vagrant up

vagrant ssh gitea-service
Configure root URL in /home/vagrant/gitea/gitea/conf/app.ini:
[server] ROOT_URL = https://10.10.33.100/gitea/
exit

vagrant reload --provision

Finish installation in browser:
https://10.10.33.100/gitea/install

Redeploy everything (data is kept unless directories registry/, registry-mirror/ are deleted):
vagrant provision

NOTE: all gitea data is lost on VM destruction as it's stored under /home/vagrant/gitea/

NOTE: Based on practices from: DevOps Toolkit 2.0 book, by Viktor Farcic
