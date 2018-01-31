# CREDENTIAL_FILE=~/.aws/credentials
# CONFIG_FILE=~/.aws/config
CREDENTIAL_FILE=./credential.txt
CONFIG_FILE=./config.txt


if [ "$#" -lt 3 ]; then
  echo "You need 3 arguments." >&2
  exit 1
fi


# echo "[$1]" >> $CREDENTIAL_FILE
# echo "aws_access_key_id = $2" >> $CREDENTIAL_FILE
# echo "aws_secret_access_key = $3" >> $CREDENTIAL_FILE

# echo "[profile $1]" >> $CONFIG_FILE
# echo ""

cat << EOF | tee -a $CREDENTIAL_FILE
[$1]
aws_access_key_id = $2
aws_secret_access_key = $3
EOF

cat << EOF | tee -a $CONFIG_FILE
[profile $1]
region = ap-northeast-1
output = text
EOF

echo "done"


