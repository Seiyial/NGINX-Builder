# U/C

tput setaf 202
echo "<<<<  NGINX-BUILDER DEPLOY TOOL  >>>>
"

# Pull Changes
git pull

# Sync changes excluding .git repository
rsync -qauh ./nginx/* "/etc/nginx"

# Set proper permissions
chmod -R 644 /etc/nginx
find /etc/nginx -type d -exec chmod 700 {} \;

# If you store SSL certs under `/etc/nginx/ssl`
chmod -R 600 /etc/nginx/ssl
chmod -R 600 /etc/nginx/ssl/*

# Reload nginx config
# but only if configtest is passed
nginx -t && sudo systemctl reload nginx
