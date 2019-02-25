## Basic GIT Commands

### Creating a new working copy

```
git clone <https-path-to-repository> [<folder-name>]
```

folder-name is optional and defaults to current repository name

### Pulling latest content from master branch

While inside a working copy, do the following:

```
git pull
```

Note: All commands default to origin master branch unless specified otherwise

### Checking status of commits

```
git status
```

### Adding new changes for commit into master branch

```
git add <filename>
```

### Commit new changes to master branch

```
git commit -m "yourcommentshere"
```

### Push new changes to master branch

```
git push
```

## Basic Branch Commands

### Creating a new branch

```
git checkout -b <new-branch-name>
```

### Cloning a specific branch

```
git clone -b <branch> <remote_repo>
```

Example:

```
git clone -b morepewpew https://github.com/Mith87/Asteroids.git
```

With Git 1.7.10 and later, add --single-branch to prevent fetching of all branches. Example, with OpenCV 2.4 branch:

```
git clone -b morepewpew --single-branch https://github.com/Mith87/Asteroids.git
```

### Pushing changes on a branch

```
git push <origin> [name-of-your-branch]
```

### See all existing branches

```
git branch -a 
```

### Switch between branches

```
git checkout -b <branch-name>
```

### Delete a branch on GitHub

```
git push origin :[name-of-your-branch]
```

## About Pull Requests

Pull Requests are commonly used by teams and organizations collaborating using the [Shared Repository Model](https://help.github.com/en/articles/about-pull-requests#article-platform-nav), where everyone shares a single repository and topic branches are used to develop features and isolate changes. Many open source projects on Github use pull requests to manage changes from contributors as they are useful in providing a way to notify project maintainers about changes one has made and in initiating code review and general discussion about a set of changes before being merged into the main branch.

Here's an [example pull request](https://github.com/jquery/jquery/pull/1051) from jQuery's github repo.

