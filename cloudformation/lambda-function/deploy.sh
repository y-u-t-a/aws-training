rm python.zip
zip -r python.zip python/*
aws s3 rm s3://<s3bucket>/python.zip
sleep 2
aws s3 cp python.zip s3://<s3bucket>/
aws cloudformation create-stack --stack-name mystack  --template-body "file://$(pwd)/template.yml"