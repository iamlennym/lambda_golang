GOOS=linux GOARCH=amd64 go build -o main

zip deployment.zip main

aws lambda create-function --function-name MyGoLambda \
    --runtime go1.x \
	--role arn:aws:iam::XXX:role/MyLambdaRole \
    --handler main \
    --zip-file fileb://./deployment.zip

