# 1.1 Think About Time Reflection
I learned a number of productivity ideas, some being the hard way is easier, as you create better habits which in turn are easier to keep up.  Start small and become big, starting with an MVP, a minimum viable product.  Practice in small increments to be able to push yourself harder, and also to give yourself rest.  We look to ourselves to tell us who we are, so create a habit, you will look better to yourself and it will bring you up in the long run.  Three elements cause a behavior, 1. Motivation, 2. Ability to do it, 3. a trigger and call to action.
  Time Boxing is the act of setting aside a period of time to complete a goal.  I am using it in Phase 0 to achieve different goals, for example using the Pomodoro technique (25 minute intervals with rewards after) to help increase studying efficiency and finish weekly tasks.
  Currently I manage my time by using a timer and intervals, after divvying up goals for the day into these interval segments.  I am also using the Tiny Habits technique to start creating new habits, freeing up more time for study.  Since I started the Tiny Habits technique today, I don’t know if it is working yet, but the Time Boxing/Time Chunking technique has been very successful, especially with a small reward or rest afterwards.
  My overall plan for Phase 0 time management is to use Tiny Habits to free up more of my day for Phase 0 study, as well as use the Pomodoro technique to have efficient chunks of work time that lead to small rewards.  In this way I hope to achieve a quicker rate of study and also provide myself with a deeper focus, leading to deeper understanding of material.

## 1.2 The Command Line Reflection
Shell is a term for the user interface with an operating system.  The shell is the entity of programming that understands and executes the commands a user enters, such as Linux or UNIX.  In some systems, the shell is called a command interpreter.  Bash is the shell written for UNIX in 1989.
  The most challenging part of the exercise was remembering the add-on commands such as -i or -p, and also where to place them.  Basically the commands were easy to memorize but the syntax was the tough thing to remember as it is very different from any syntax I have come in contact with.
  I was able to successfully use all of the commands, but a few were tougher to grapple with than others, especially the >, <, |, and >> commands which take a few mental seconds to figure out each time I typed one.  However, this will probably improve over time.
  -pwd - shows directory location
  -ls - lists directory files and directories
  -mv - moves an item
  -cd - change directory
  -../ - shows the type of folder you are in, or goes up one level after cd
  - touch - creates an empty text file
  -mkdir - make directory
  -less - page the content of a file
  -rmdir - remove directory
  -rm - remove
  -help - get help on a command, or -man - look at the manual for a command

### 1.4 Forking and Cloning Reflection
  If you are new to GitHub, here is how to create a new repo, fork a repo, and clone a repo.  First you must create a GitHub account.  To create a repo, simply go to the GitHub homepage and click create a new repository on the right.  To fork a repo, navigate to the repo that you would like to fork and click fork on the top right.  Once prompted with the user menu, select your own GitHub user profile - Done! To clone a repo to your computer, we must open the Command Line.  Navigate to the folder you would like to clone to, and use the command “git clone URL” substituting URL for the actual URL of the repo you wish to clone. And there you go!
  You would fork a repo as opposed to creating one if you would like to work on the code within the repo that you are forking.  If you created one, it would just be blank.  Forking allows you to copy the code from the master repo, and work on it separately.
  On my command line, I have a few more symbols now on every line after installing Git that I am unsure of what they are.  Other than that, I did not run into any issues.  I learned of the novel and extremely awesome way of keeping master code safe while giving developers the room to be creative and work on code without the looming possibility of a bug disaster wiping out your work.

#### 1.5 Tracking Changes Reflection
How does tracking and adding changes make developers' lives easier?
What is a commit?
What are the best practices for commit messages?
What does the HEAD^ argument mean?
What are the 3 stages of a git change and how do you move a file from one stage to the other?
Write a handy cheatsheet of the commands you need to commit your changes?
What is a pull request and how do you create and merge one?
Why are pull requests preferred when working with teams?

Tracking and adding changes makes developers' lives easier by protecting the master code from inadvertent destructive changes, as well as allows developers to track a history of changes of the app, ones made by oneself and other developers.  It also provides a platform for peer review.
A commit is like a save point in the writing of code, file, or project.  The commit saves the work you have done at its current postion, then requires a push to overwrite the older version of the file on github.
The best practices for commit messages are to be specific of your changes, clear in the actions you have taken, and to write in the imperative.
HEAD^ means the last commit that you have committed successfully. HEAD represents the commit you are currently on, and HEAD~3 represents the one behind HEAD^.
The three stages of a git change are Untracked, Staged, and then finally pushed to github.  You change from Untracked to Staged by using
git add filename
to stage a change. After a change has been staged, you commit it by
git commit -m "commit message here"
After commiting the changes, you move to finally push and merge onto github by navigating to the repo you are changing on github, clicking compare & pull request.  Then create a pull request with Title and Message.  Merge the pull request once they are reviewed.  Finally, the branch can be deleted once the pull request has been sucessfully merged and closed.  After that, checkout master on your local network, fetch the origin master and merge the origin/master.
Here is a handy cheatsheet of the commands you need to commit your changes:
git master
git pull
git checkout -b branch_name
work work work
git add filename
git commit -m "commit message here"
git push origin branch_name
>>>> Go to repo, Create a pull request, review changes and merge it in.
git checkout master
git fetch origin master
git merge origin/master

A pull request is a request to merge the branch that you have created and edited to the master branch on github.  You create one by going to your repo after your commit and push, and clicking the green button that says create pull request.  After creating the pull request, merge the changes and delete the old branch you used to make the changes to clean up your files.
Pull requests are preferred when working with teams because it allows other developers on your team to review your changes before merging it to the master.  This is just one more check to make sure that your changes work and are not destructive or inefficient.
