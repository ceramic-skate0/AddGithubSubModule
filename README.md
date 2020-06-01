# AddGithubSubModule
A batch script to run from Git CMD to add a submodule to a repo on Github. (Once all the setup work is complete)

REF: https://github.blog/2016-02-01-working-with-submodules/

Adding a Submodule


On git and Github to make a submodule work.
I had to...

- Downlaod and install git for Windows
- Add Github SSH Key to user profile as default key name on local machine
- Add email into global git config
- Add PAT on Github (Maybe not required)
- git clone the repo i wanted to add the submodule to, on your local machine. This means a local repo folder containing ALL the code your keeping track of.

## After prep work is done Start Here...

0. ``git clone https://github.com/{Account Name}/{REPO}``

## Then repeatable process to do this starts:

1. ``cd {YOUR GITHUB REPO local box}`` move into repo dir
2. ``git submodule add https://github.com/{Account Name of Hosting Account}/{REPO}``
3. ``git commit -m "{YOUR GITHUB REPO} submodule"`` make a commit to your local machine branch
4. ``git pull`` local machine gets change to github ready
5. ``git push`` send change to github
6. ``git submodule update --init --recursive`` update all the things (this could also be done 1st)
