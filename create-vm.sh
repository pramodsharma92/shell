aws configure set AWS_ACCESS_KEY_ID $ACCESS_KEY
aws configure set AWS_SECRET_KEY_ID $SECRET_KEY
aws configure set AWS_DEFAULT_REGION $DEFAULT_REGION

aws ec2 run-instances --image-id $IMAGE_ID --count $count --instance-type $INSTANCE_TYPE --key-name my-key --security-group-ids sg-daa564a1 --subnet-id subnet-33264e54 --associate-public-ip-address --query 'Instances[0].InstanceId' --output text
