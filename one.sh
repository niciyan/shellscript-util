# Move files to "garbage/" dir
find . -type f -maxdepth 1 | xargs -I@ mv @ ./garbage

# Create user and Change password
adduser <username>
echo <username> | passwd <password> --stdin

