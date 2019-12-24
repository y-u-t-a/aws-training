# AWS SES を用いて受信したメールの添付ファイルを S3 にアップロードする

## 前提
- バージニア北部リージョンを使用する  
    ※ AWS SES は東京リージョンで提供されていない
- コンソールで作業する
- 動作確認用のメールアドレスを所持している
    - 私は普段使用している Gmail のアドレスを用いた
- 動作確認用のS3バケットを所持している

## 処理の概要
- SES の 「S3 アクション」でメール


## AWS SES の Email Addresses を設定

### 設定手順
- AWS SES - [Email Addresses] へ移動
- [Verify a New Email Address] をクリック
- 「動作確認用のメールアドレス」を入力して、
- `Amazon Web Services – Email Address Verification Request in region US East (N. Virginia)` というタイトルのメールが、設定したメールアドレス宛てに送られる
- メールに記載された URL をクリックする（メールアドレスが SES で有効になる）


## Rule Sets を作成
### ステップ1：対象メールアドレスを設定
- 「動作確認用メールアドレス」を追加

### ステップ2：アクションを設定
- 1つ目に「S3 アクション」を設定
- 2つ目に「」

### ステップ3：ルール詳細を設定


## 参考記事
- Lambda アクション
    - 「入力形式」を参照
    - https://docs.aws.amazon.com/ja_jp/ses/latest/DeveloperGuide/receiving-email-action-lambda.html
- Lambda 関数の例
    - 「例 3: Amazon S3 から E メールを取得する」を参照
    - https://docs.aws.amazon.com/ja_jp/ses/latest/DeveloperGuide/receiving-email-action-lambda-example-functions.html
- Amazon S3 バケットに書き込むためのアクセス権限を Amazon SES に付与する
    - https://docs.aws.amazon.com/ja_jp/ses/latest/DeveloperGuide/receiving-email-permissions.html