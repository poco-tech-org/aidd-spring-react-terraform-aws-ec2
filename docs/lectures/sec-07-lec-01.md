# Terraformプロジェクト・変数・state

- レクチャーID: `sec-07-lec-01`
- セクション: 7. TerraformでAWS基盤を構築する
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

## レクチャーの目的

Terraformの構成、入力値、stateの役割を理解し、安全な変更の基礎を作る

## 進行

- provider、variables、outputs、backendの構成を決める
- terraform fmt、validate、planの流れを実行する

## 成果物

- Terraformプロジェクトの骨格

## 動作確認

- 変更内容をplanで確認してからapplyできる

## 実装ファイル

- `infra/versions.tf`
- `infra/provider.tf`
- `infra/variables.tf`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Terraformプロジェクト・変数・state** とする。
