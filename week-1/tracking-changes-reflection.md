*How does tracking and adding changes make developers' lives easier?
  *Ans: There is no confusion over who did what to the code and when. All changes are timestamped and have a username associated.
*What is a commit?
  *Ans: A commit is a snapshot of changes made to the code on your local computer.
*What are the best practices for commit messages?
  *Ans: The first row should be a summary of approximately 50 characters followed by a blank space. A paragraph and/or ordered lists should follow that summary with each row of text kept to approximately 70 characters. Use imperative tense ;)
*What does the HEAD^ argument mean?
  *Ans: This instructs Git to show the most recent commit instead of a previous commit.
*What are the 3 stages of a git change and how do you move a file from one stage to the other?
  *Ans: A file goes from untracked to uncommitted to committed. Move untracked to uncommitted by using "git add filename" or "git add .". Move files from uncommitted to committed by using "git commit -m "Summary text""
*Write a handy cheatsheet of the commands you need to commit your changes?
  *Ans:
    *git log - See historical commits
    *git status - See files that have changed and need to be committed
    *git checkout master - change to master branch
    *git pull origin master - incorporate the current version of master
    *git branch -b branch_name - create new branch
    *git checkout branch_name - change to new branch
    *git add - add changed files to the commit
    *git commit -m "Summary text" - commit changes
    *git merge master - merge changes from master into the feature branch. This should always be done after checking out the feature branch and NOT the master.
    *git push origin branch_name - This pushes changes to the remote repository.
    *git branch -d branch name - This deletes the branch on the local machine AFTER the pull request has been completed on GitHub
*What is a pull request and how do you create and merge one?
  *Ans: A pull request will find a commit that has been "pushed" and make it available to be "pulled" into the GitHub remote repository. This gives other developers/teammates an opportunity to review and comment on the changes being made before incorporating them into master. Create a pull request:
    *Locally complete a commit, merge master to feature, and push
    *On GitHub, create a pull request, merge the request to master, delete the branch when complete
    *Locally delete the branch when complete
*Why are pull requests preferred when working with teams?
  *Ans: This gives one or more developers the opportunity to review changes before they are merged into master.