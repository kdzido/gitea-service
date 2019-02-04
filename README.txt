Purpose: Self-sustained Gitea service for hosting Git repositories on own laptop.

Run:
vagrant up

Finish installation in browser:
http://10.10.33.100:8083/install

Redeploy everything (data is kept unless directories gitea/, registry/, registry-mirror/ are deleted):
vagrant reload --provision

NOTE: Based on practices from: DevOps Toolkit 2.0 book, by Viktor Farcic
