# 設定・Secrets・SSM・ログ

- レクチャーID: `sec-08-lec-03`
- セクション: 8. EC2へデプロイする
- 種別: `demo`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

Spring BootアプリをEC2で再現可能に起動し、ログと設定を確認できるようにする

## レクチャーの目的

環境設定とログを安全に扱い、SSHに依存しない確認方法を整える

## 進行

- 秘密情報をコードやuser dataへ直書きしない方法を確認する
- AWS Systems ManagerとCloudWatchまたはjournalログを確認する

## 成果物

- 設定管理とログ確認手順

## 動作確認

- アプリ設定と起動ログを安全に確認できる

## 実装ファイル

- `infra/iam.tf`
- `docs/operations/configuration.md`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **設定・Secrets・SSM・ログ** とする。
