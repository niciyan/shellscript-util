# Move files to "garbage/" dir
find . -type f -maxdepth 1 | xargs -I@ mv @ ./garbage

# Create user and Change password
adduser <username>
echo <username> | passwd <password> --stdin

# Enable write to Documentroot for group users.
chmod g+w /var/www/html

# Change Documentroot for "apache" group
chown -R :apache /var/www/html

# Change primary group of user "john"
usermod -g apache john

# Add secondary group "apache" for user "john"
usermod -aG apache john

# Read until "EOF" from stdin. Print to stdout and file(append).
cat << EOF | tee -a "out.txt"
aaa
bbb
ccc
EOF

# CPU usage
free -h

# Memory Usage
mpstat -P ALL

rsync -av --delete --exclude '*.pdf' -e ssh <src> <remote_ssh_user>@<remote_ip>:<dst>
