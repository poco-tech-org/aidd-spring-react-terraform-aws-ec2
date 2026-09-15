# AIDD Spring React Terraform AWS EC2

AI駆動開発（AIDD）で Spring Boot + React のWebアプリを開発し、TerraformでAWS上にEC2ベースの本番構成を構築するUdemy講座の教材リポジトリです。

講座タイトル（予定）:

> AI駆動開発で作るSpring Boot × Reactアプリ：TerraformでAWS EC2本番構成

## この講座で扱うこと

- Codexを使った要件整理、設計、実装、テスト、レビュー
- Spring BootによるWeb API開発
- Reactによるフロントエンド開発
- Amazon Cognitoによる認証
- Amazon RDS for PostgreSQLとの接続
- TerraformによるAWSインフラ構築
- Amazon EC2へのアプリケーションデプロイ
- Application Load Balancer（ALB）による負荷分散
- EC2 Auto Scalingによるスケールアウトと自動復旧
- RDS Multi-AZによるデータベースの可用性向上
- Terraformで作成したリソースのAWSマネジメントコンソール確認

## 想定アーキテクチャ

- 2つのAvailability Zoneを利用
- ALBをパブリックサブネットに配置
- Spring BootアプリをEC2 Auto Scaling Groupで実行
- アプリケーション用EC2とRDSをプライベートサブネットに配置
- RDS for PostgreSQLをMulti-AZ構成で利用
- Cognitoを認証基盤として利用
- Terraformでインフラをコード化

## AIDDの開発サイクル

この講座では、AIにコードを生成させるだけではなく、次のサイクルで開発します。

1. Codexと要件・設計を整理する
2. 小さな単位で実装する
3. テストとローカル動作確認を行う
4. Codexの出力をレビューし、必要に応じて修正する
5. Terraformのplanとapplyを実行する
6. AWSマネジメントコンソールで作成結果を確認する
7. 障害・スケール・フェイルオーバーを検証する

## 主な技術

| 分類 | 技術 |
|---|---|
| Backend | Spring Boot |
| Frontend | React |
| Authentication | Amazon Cognito |
| Database | PostgreSQL / Amazon RDS |
| Compute | Amazon EC2 |
| Load Balancing | Application Load Balancer |
| Scaling | EC2 Auto Scaling |
| High Availability | RDS Multi-AZ |
| Infrastructure as Code | Terraform |
| AI-assisted development | Codex |

## 動作確認の例

- ALBのTarget GroupでEC2がHealthyになること
- Auto Scalingによってインスタンスが追加されること
- EC2を停止・終了した場合にインスタンスが補充されること
- RDSのPrimary AZとSecondary AZをコンソールで確認すること
- RDSフェイルオーバー後にアプリケーションが復旧すること
- TerraformのstateとAWSコンソール上の実リソースが一致すること

## 前提

- AWSアカウント
- AWS CLI
- Terraform
- Java開発環境
- Node.js開発環境
- AWSリソースを作成できるIAM権限

AWSリソースには料金が発生する場合があります。検証が終わったら、不要なリソースを削除してください。特に、ALB、NAT Gateway、EC2 Auto Scaling、RDS Multi-AZは作成したままにしないでください。

## セキュリティ上の注意

- AWSアクセスキー、パスワード、シークレットなどをコミットしない
- 機密情報は環境変数、AWS Secrets Managerなどで管理する
- Terraformの機密性が高いtfvarsファイルを公開しない
- このリポジトリのコードを本番環境で利用する場合は、環境・権限・監視・バックアップを別途検討する

## シリーズ予定

同じ命名規則で、次の講座を予定しています。

- `aidd-spring-react-terraform-aws-ecs`
- `aidd-spring-react-terraform-aws-eks`
- `aidd-spring-react-terraform-cloudflare`

## Status

講座制作中。
