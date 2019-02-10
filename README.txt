Purpose: Self-sustained Gitea service for hosting Git repositories on own laptop.

Run:
vagrant up

Configure root URL in /home/vagrant/gitea/gitea/conf/app.ini:
[server] ROOT_URL = http://10.10.33.100/git/

vagrant reload

Finish installation in browser:
http://10.10.33.100/gitea/install

Redeploy everything (data is kept unless directories registry/, registry-mirror/ are deleted):
vagrant reload --provision

NOTE: all gitea data is lost on VM destruction as it's stored under /home/vagrant/gitea/

NOTE: Based on practices from: DevOps Toolkit 2.0 book, by Viktor Farcic
