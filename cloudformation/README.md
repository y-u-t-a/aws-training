# CloudFormation の勉強

## CloudFormation とは
AWS のリソースのプロビジョニング・設定を JSON または YAML で記述されたファイルによって行うサービス。

## 用語
- テンプレート : JSON または YAML で記述されたファイル。スタックの設計図。どのリソースをどう起動するかを記述。
- スタック : テンプレートを元に作成されたリソースの集合
- 論理ID : テンプレート内で他のリソースを参照するのに使用。テンプレート内で一意。
- 物理ID : リソースに実際に割り当てられる名前（EC2 のインスタンスID、S3バケット名など）

## 仕様メモ
- スタックを削除するとスタックに紐づくリソースも削除される
- リソースの構築順は AWS CloudFormation が自動的に決定する

## スタックの操作（AWS）
- スタックの作成
    ```
    aws cloudformation create-stack --stack-name <stackname> --template-body "file://$(pwd)/template.yml" 
    ```

## 参考資料
- 公式リファレンス
    - https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/Welcome.html
- Black Belt
    - https://www.slideshare.net/AmazonWebServicesJapan/aws-black-belt-online-seminar-aws-cloudformation
- テンプレートリファレンス
    - https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/template-reference.html
- スタックの操作（AWS）
    - https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/cfn-using-cli.html