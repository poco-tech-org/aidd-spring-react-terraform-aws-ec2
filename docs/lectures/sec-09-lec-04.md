# Launch Template・Auto Scaling・Target Tracking

- レクチャーID: `sec-09-lec-04`
- セクション: 9. ALB・Auto Scaling・Multi-AZを実装する
- 種別: `coding`
- 目安時間: 9分
- ステータス: `planned`

## セクションの目的

単一EC2構成を、負荷分散・自動復旧・データベース高可用性を備えた2AZ構成へ拡張する

## レクチャーの目的

EC2を2AZへ配置し、負荷に応じて台数を調整するASGを作る

## 進行

- min、desired、maxとインスタンス起動設定を定義する
- CPU使用率のTarget Trackingとヘルスチェックを設定する

## 成果物

- EC2 Auto Scaling GroupのTerraformコード

## 動作確認

- ASGが2AZへインスタンスを配置し、ALBへ登録する

## 実装ファイル

- `infra/autoscaling.tf`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **Launch Template・Auto Scaling・Target Tracking** とする。
