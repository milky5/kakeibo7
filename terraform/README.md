# kakeibo7 terraform

## 動作確認手順(テスト用)

1. AWS Role

   1. AWS Management Console で ロールを新規作成  
      テスト用に`AmazonEC2FullAccess`をつけた  
      タグに`terraform-ec2-sample`を指定  
      ロール名を`ec2-sample-deployer-role`に設定  
      信頼関係で`Principal`内が`"AWS": "arn:aws:iam::XXXXXXXXXXXX:user/username"`となるよう設定

1. AWS CLI

   1. インストール
   1. aws configure  
      出力形式を`text`にする(?)

1. terraform

   1. インストール

1. 動作確認コマンド

   1. `cd terraform`

   1. 初期化  
      `terraform init`
   1. チェック  
      `terraform plan`
   1. 作成  
      `terraform apply`
   1. 破棄  
      `terraform destroy`

## メモ

### 構成案

kakeibo7 API
-> publish
-> docker build
-> ECR にアップロード
-> lambda 関数を作成
-> API Gateway と紐付け
-> cognito 認証されていないと API 叩けないようにする

HTML
-> S3 にアップロード
-> cognito 認証されていないとアクセスできないようにする

cognito
-> pool など作成
-> ユーザーなど作成
