# Security Group・IAM・Instance Profile

- レクチャーID: `sec-07-lec-03`
- セクション: 7. TerraformでAWS基盤を構築する
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

## レクチャーの目的

通信経路を必要最小限に制限し、EC2へ安全に権限を付与する

## 進行

- ALB、EC2、RDS間のSecurity Groupルールを定義する
- EC2用IAMロールとインスタンスプロファイルを作る

## 成果物

- 通信制御とEC2権限のTerraformコード

## 動作確認

- 許可すべき通信だけがSecurity Groupに定義されている

## 実装ファイル

- `infra/security_groups.tf`
- `infra/iam.tf`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Security Group・IAM・Instance Profile** とする。
