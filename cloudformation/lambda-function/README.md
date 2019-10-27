# Cloudformation を使って Lambda をデプロイする

## 必要な権限
- Cloudformation write
- Lambda write

## ハマった点
### ZipFile はコードをインラインで記述するときに使うパラメータ
> このパラメータに関数のソースをインラインで含めると、AWS CloudFormation では、これを index というファイルに配置して圧縮し、デプロイパッケージを作成します。
https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile

### Unable to import module 'index'
デプロイした Lambda function を実行するとエラーが発生。  


## 感想
- テンプレートファイルの記述が面倒
    - リファレンスを見ながらテンプレートファイルを書くのが面倒
    - AWS CDK を使えばリファレンスを見る手間が省ける
- Lambda 関数を S3 にアップロードするのが面倒
- Cloudformation は概要レベルで抑えておいて AWS CDK や AWS SAM に注力した方がいいと思った

## 参考資料
- AWS::Lambda::Function のリファレンス
    - https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html
- Python の AWS Lambda 関数ハンドラー
    - https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/python-programming-model-handler-types.html