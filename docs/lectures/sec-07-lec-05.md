# plan・applyとAWSコンソール確認

- レクチャーID: `sec-07-lec-05`
- セクション: 7. TerraformでAWS基盤を構築する
- 種別: `demo`
- 目安時間: 6分
- ステータス: `planned`

## セクションの目的

AWSリソースをコード化し、2AZのネットワークとアプリ基盤を再現可能にする

## レクチャーの目的

Terraformの実行結果をstateとAWSマネジメントコンソールの両方で確認する

## 進行

- plan差分をレビューしてapplyする
- VPC、サブネット、Security Group、RDSの画面を確認する

## 成果物

- Terraformとコンソールの照合記録

## 動作確認

- 主要リソースのコード、state、コンソール表示が一致する

## 実装ファイル

- `infra/outputs.tf`
- `infra/terraform.tfvars.example`
- `docs/verification/terraform-console.md`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **plan・applyとAWSコンソール確認** とする。
