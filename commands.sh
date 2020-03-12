# create an s3 bucket
aws s3 mb s3://paik-code-sam

# package cloudformation
aws cloudformation package --s3-bucket paik-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
# same package..

# deploy
aws cloudformation deploy --template-file /Users/paik/dev/sam/gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM