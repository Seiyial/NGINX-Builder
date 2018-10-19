# NGINX Builder

`Archived` for now because for most cases we can just `sudo apt install nginx-extras`. Plus this is only half complete.

Manage your NGINX servers like they were server code (because in many cases they are). Have them version controlled with a one-command deploy. Read on to find out how.

## Installation

1. [Create a new GitHub Repo](https://github.com/new) for your NGINX code.

2.
```bash
# Your Computer
git clone https://github.com/Seiyial/NGINX-Builder.git
cd NGINX-Builder
git remote remove origin
git remote add origin https://github.com/you/your-new-nginx-repo
git push -u origin master
```

3. Add NGINX.

[Available NGINX Versions](http://nginx.org/en/download.html)

```bash
bin/dl
# or an older version
bin/dl 1.14.0
bin/dl 1.12.2
# if a newer version comes out and I didnt update this script,
bin/dl 1.16.1
```

Manual method:
Go to http://nginx.org/en/download.html and download the file to `source-dl/nginx-1.xx.x.tar.gz`.
Then `cd source-dl && tar -xzf nginx-1.xx.x.tar.gz && mv nginx-1.xx.x.tar.gz ../source`

4. Adding Build Config
Skip this step if this is foreign to you.

##### Original Method:
```bash
cd source
./configure --something --something-else --...
```
Issues:
- easy to forget the config flags after not touching the NGINX server for months
- got to use bash or zsh history or retype everything

##### Now:
```bash
# Make sure your `source` folder is there already
bin/config

# Choose one!
subl source/BUILDER_OPTS # Sublime Text
code source/BUILDER_OPTS # VSCode
vim source/BUILDER_OPTS # Vim
atom source/BUILDER_OPTS # Atom
```

To add a config flag, add a new line with

```
--with-http_ssl_module # insert a SPACE at the end
```

and **make sure there is a space at the end of the line**.
