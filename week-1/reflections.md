# 1.1 Think About Time

Timeboxing - This is separating the day into timed blocks for work with small breaks in between them. After you work through several blocks of time you take a larger break.

Time Management - I don't currently have a time management process. I use to-do lists that are well clarified into manageable pieces, but have not really needed to track how efficient I am. It's been working for me so far, but the addition of a timer should be an improvement.

Time Management Strategy

Meditation/Exercise - Meditate/exercise first thing in the day to clear your head and be more productive
GTD - "Getting things done" by capturing everything that's in your head with your to-do list of choice, clarifying it so it's broken down into manageable chunks, and then slotting it into a pomodoro time box

Pomodoro Technique - Set a timer for 25 minutes, take a 5 minute break, repeat 4 times and take a longer 15 - 20 minute break. Use a chrome extension timer.

# 1.2 The Command Line

Shell/Bash - A shell is a processor that allows you to give commands to a computer. Bash is a version of a shell and was originally used on the the GNU operating system, but it's now available on other operating systems.

The most challenging part for me was overcoming the urge to procrastinate. I've used the command line before, but not regularly. Once I got the ball rolling it was easy to use all of the commands and I was able to complete each exercise.

To me the most important commands allow for creating, viewing, updating, and deleting directories and files. With that knowledge you can use the manual or help to do more advanced commands.

pwd - Show the current directory you are in
ls - Display all directories and files in the current directory
mv - Change the name of a file
cd - Change to a new directory
../ - Go up/back one directory
touch - Create a new file
mkdir - Create a new directory
less - Show the contents of a file
rmdir - Delete a directory, but not a file
rm - Delete a file, but not a directory
help - Display bash specific commands (Not sure at first, had to research)

# 1.4 Forking and Cloning

Instructions - Create New Repo, Clone Repo, Fork Existing Repo

Prerequisites - You have a GitHub account and Git installed on your local machine

Create New Repo
On Github, navigate to "Repositories" and click "New"
Set Repository Name to "phase-0" and make it "Public"
Set Add a license to "MIT License"
Click create repository to complete
Clone Repo
Create a directory on your local computer for the repository
On GitHub, navigate to "Repositories" and copy the URL
On your command line run "git clone URL"
View the files in the local directory to confirm this is complete
Fork Existing Repo
On GitHub, navigate to an existing repository and click fork
Follow "Clone Repo" steps
You would fork a repository to start working on an existing project instead of starting from scratch. This will allow you to start with the existing code and make your own changes that will not be affected by subsequent changes to the existing code.

I struggled with removing the repositories to repeat the cloning steps without using any instructions. I eventually used "rm -rf *" within each repository to delete the files and then "rmdir directory-name" for each directory which worked for me. I learned that command line learning will never stop :)