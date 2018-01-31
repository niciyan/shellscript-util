
aws ec2 --profile ${PROFILE} \
    describe-instances \
    --output text \
    --instance-ids "${INSTANCE_ID}"

aws ec2 --profile ${PROFILE} \
    describe-instances \
    --output text \
    --instance-ids "${INSTANCE_ID}" \
    | grep TAGS | sed -e "s/\t/ /g" |  cut -f 3 -d" "

aws cloudwatch --profile ${PROFILE} \
    put-metric-alarm \
    --alarm-name "${DOMAIN}  CheckStatus" \
    --alarm-description "${DOMAIN}  CheckStatus" \
    --metric-name StatusCheckFailed \
    --namespace AWS/EC2

~                                                                                                                                                                                              ~
~
~
