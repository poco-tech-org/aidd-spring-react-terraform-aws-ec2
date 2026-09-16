# ALB・Target Group・Security Group

- レクチャーID: `sec-09-lec-03`
- セクション: 9. ALB・Auto Scaling・Multi-AZを実装する
- 種別: `coding`
- 目安時間: 8分
- ステータス: `planned`

## セクションの目的

単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する

## レクチャーの目的

ALBからHealthyなEC2へリクエストを転送する構成をTerraformで作る

## 進行

- ALB、listener、Target Group、health checkを定義する
- ALBからEC2だけを許可するSecurity Groupへ変更する

## 成果物

- ALBとTarget GroupのTerraformコード

## 動作確認

- ALB経由でアプリへアクセスでき、TargetがHealthyになる

## 実装ファイル

- `infra/load_balancer.tf`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **ALB・Target Group・Security Group** とする。
