# AIDD Spring React Terraform AWS EC2

AI駆動開発（AIDD）で Spring Boot + React のWebアプリを開発し、TerraformでAWS上にEC2ベースの本番構成を構築するUdemy講座の教材リポジトリです。

講座タイトル:

> AI駆動開発で作るSpring Boot × Reactアプリ：TerraformでAWS EC2本番構成

## このリポジトリの使い方

カリキュラムは `curriculum.yaml` を正本としています。

- `curriculum.yaml`: セクション・レクチャー・完了条件の機械可読な定義
- `schema/curriculum.schema.json`: `curriculum.yaml` のJSON Schema
- `docs/curriculum.md`: 人間向けのカリキュラム一覧
- `docs/lectures/`: 各レクチャーの目的、Codexへの指示文、生成物の目安、検証手順
- `backend/`: Spring Boot API
- `frontend/`: Reactアプリ
- `infra/`: TerraformによるAWS構成
- `scripts/`: ビルド、デプロイ、動作確認、削除用スクリプト

各レクチャーのMarkdownにある「Codexへの指示文」を作業開始時に使い、生成された差分は必ずレビューと検証を行ってください。記載されたパスは実装の目安であり、設計上の理由がある場合はCodexの提案をレビューして変更します。

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

## 開発の進め方

1. `curriculum.yaml`から対象レクチャーの目的と完了条件を確認する
2. レクチャーMarkdownのCodexプロンプトをコピーして実行する
3. 小さな単位で実装する
4. 生成された差分をレビューし、テストとローカル動作確認を行う
5. Terraformのplanとapplyを実行する
6. AWSマネジメントコンソールで作成結果を確認する
7. レクチャー資料の検証結果を更新する

詳細な作業規約は `AGENTS.md` を参照してください。

## ローカル起動の概要

```bash
docker compose up -d postgres
cd backend && mvn spring-boot:run -Dspring-boot.run.profiles=local
cd frontend && npm ci && npm run dev
```

認証を有効にする場合は、`frontend/.env.example`をもとにローカル環境変数を設定してください。環境変数ファイルや認証情報はコミットしないでください。

## AWS利用時の注意

AWSリソースには料金が発生する場合があります。検証・収録が終わったら `scripts/destroy-safe.sh` または `terraform destroy` を実行し、AWSコンソールでも削除状態を確認してください。特に、ALB、NAT Gateway、EC2 Auto Scaling、RDS Multi-AZは作成したままにしないでください。

## シリーズ予定

- `aidd-spring-react-terraform-aws-ecs`
- `aidd-spring-react-terraform-aws-eks`
- `aidd-spring-react-terraform-cloudflare`

## Status

講座制作中。
