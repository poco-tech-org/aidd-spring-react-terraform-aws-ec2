# RDS Multi-AZ・フェイルオーバー・コンソール確認

- レクチャーID: `sec-09-lec-06`
- セクション: 9. ALB・Auto Scaling・Multi-AZを実装する
- 種別: `demo`
- 目安時間: 8分
- ステータス: `planned`

## セクションの目的

単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する

## レクチャーの目的

RDS Multi-AZの構成とフェイルオーバー後のアプリ復旧を確認する

## 進行

- RDSのPrimary AZ、Secondary AZ、Multi-AZ状態を確認する
- 計画的フェイルオーバーを実行し、接続回復を確認する

## 成果物

- RDS Multi-AZとフェイルオーバーの検証記録

## 動作確認

- フェイルオーバー後も同じRDSエンドポイントでアプリが復旧する

## 実装ファイル

- `infra/outputs.tf`
- `docs/operations/rds-failover.md`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **RDS Multi-AZ・フェイルオーバー・コンソール確認** とする。
