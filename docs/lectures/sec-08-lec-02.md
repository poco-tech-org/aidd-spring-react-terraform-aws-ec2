# EC2・Launch Template・user data・systemd

- レクチャーID: `sec-08-lec-02`
- セクション: 8. EC2へデプロイする
- 種別: `coding`
- 目安時間: 7分
- ステータス: `planned`

## セクションの目的

Spring BootアプリをEC2で再現可能に起動し、ログと設定を確認できるようにする

## レクチャーの目的

EC2起動時にアプリを自動セットアップし、プロセスを管理する

## 進行

- Launch Templateとuser dataをTerraformで定義する
- systemdでSpring Bootを起動・再起動する

## 成果物

- EC2起動設定とsystemdユニット

## 動作確認

- 新しいEC2でも起動後にアプリが自動起動する

## 実装ファイル

- `infra/compute.tf`
- `infra/user_data.sh.tftpl`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **EC2・Launch Template・user data・systemd** とする。
