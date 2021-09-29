# このプロダクトの名前
variable "product_name" {}

# デプロイ先とする AWS アカウント ID
variable "account_id" {}

# デプロイ先とする AWS のリージョンコード
variable "region" {}

# デプロイに使用する AWS IAM ロールの名前
variable "deployer_role_name" {}

# Lambda 関数のタイムアウト時間 [sec]
variable "function_timeout" {
  default = 3
}
