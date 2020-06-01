@ECHO OFF
cd %USERPROFILE%\source\repos
echo List of Repo Folders on local machine:
DIR
set /P INPUT=Is this a new repo?(Y/N) %=%
If /I "%INPUT%"=="y" goto yes 
If /I "%INPUT%"=="n" goto no
:yes
set /P githubdomain1=Enter Github URL you want to CLONE as a repo locally(ie https://github.com/{Account}/{Repo}): 
git clone %githubdomain1%
goto no

:no
set /P githubdomain=Enter Github URL you want to a ADD SUBMODULE to a repo(ie https://github.com/{Account}/{Repo}): 
set /P submodulename=Enter what you want to call submodule: 
dir %USERPROFILE%\source\repos\
set /P reponame=Enter Repo name to add submodule to: 
cd %USERPROFILE%\source\repos\%reponame%
git submodule add %githubdomain% %submodulename%
git submodule update --init --recursive
git commit -m "Add submodule"
git pull 
git push
cd %USERPROFILE%\source\repos
