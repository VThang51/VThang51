Since **19 November[ ](setup)2022**

----

**Create a new repository on the command line**
```
git init
git add .
git commit -m "<commit_text>"
git branch -M <branch>
git remote add origin <url>.git
git push -u origin <branch>
```

**Push an existing repository from the command line**
```
git remote add origin <url>.git
git branch -M <branch>
git push -u origin <branch>
```

**Clone the .git folder of an existing repository**
```
git clone --bare https://github.com/VThang51/android_kernel_samsung_a13.git .git
```
