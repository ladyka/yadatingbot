zip code *.py *.md *.txt database/* user_interaction/* bot/* tests/*.py &&
yc serverless function version create --function-id=<YOUR FUNCTION ID> --runtime python311 --entrypoint index.handler --memory 128m --execution-timeout 40s --source-path code.zip --service-account-id <YOUR SERVICE ACCOUNT ID> --environment YDB_DATABASE=<YOUR YDB DATABASE CONNECTION> --environment YDB_ENDPOINT=<YOUR YDB ENDPOINT> --environment BOT_TOKEN=<YOUR BOT TOKEN>