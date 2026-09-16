# Cognito・RDS PostgreSQL・サブネットグループ

- レクチャーID: `sec-07-lec-04`
- セクション: 7. TerraformでAWS基盤を構築する
- 種別: `coding`
- 目安時間: 8分
- ステータス: `planned`

## セクションの目的

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

## レクチャーの目的

認証基盤とデータベースをTerraformで作成し、アプリ設定へ接続する

## 進行

- Cognito User PoolとApp Clientを定義する
- RDS、DBサブネットグループ、パラメータを定義する

## 成果物

- CognitoとRDSのTerraformコード

## 動作確認

- 作成されたCognitoとRDSの設定をコンソールで確認できる

## 実装ファイル

- `infra/cognito.tf`
- `infra/rds.tf`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Cognito・RDS PostgreSQL・サブネットグループ** とする。
