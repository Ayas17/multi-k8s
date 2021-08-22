"# multi-k8s" 
First time commit and push to origin
=====================================
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Ayas17/multi-k8s.git
git branch -M master
git push -u origin master
#Link remote repo
==================
git remote -v
#Remove origin
================
git remote remove origin

A Workflow for changing in Prod
===============================
Branch chechout to local repo
git checkout -b Develoment
After making change
===================
git status
git add .
git commit -m "comments"
git push origin Development
Merge changes to master on GITHUB
=================================
- Create a pull request
- Compare current branch with master
- Merge and create pull request
- Click Merge pull request
- Travis build and deploy to Cloud service

