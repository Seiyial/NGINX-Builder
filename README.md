# NGINX Builder

Manage your NGINX servers like they were server code (because in many cases they are). Have them version controlled with a one-command deploy. Read on to find out how.

## Installation

#### Installation

```bash
git clone https://github.com/Seiyial/nginx-builder.git
cd nginx-setup
git remote remove origin
git remote add origin https://github.com/you/your-nginx-repo
git push -u origin master
```

#### Get Started

```bash
git clone https://
bin/download-src.sh 1.15.3 # nginx version
# We do not check for validity, we just `curl`.
```

[Available NGINX Versions](http://nginx.org/en/download.html)


```bash
bin/unpack-src.sh 1.15.3
