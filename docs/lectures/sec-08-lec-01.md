# JARビルドとアーティファクト配布

- レクチャーID: `sec-08-lec-01`
- セクション: 8. EC2へデプロイする
- 種別: `coding`
- 目安時間: 6分
- ステータス: `planned`

## セクションの目的

Spring BootアプリをEC2で再現可能に起動し、ログと設定を確認できるようにする

## レクチャーの目的

アプリケーションを固定された成果物としてEC2へ渡す方法を作る

## 進行

- テスト付きビルドでJARを作成する
- 成果物のバージョンと配布手順を決める

## 成果物

- 再現可能なJARビルド手順

## 動作確認

- 同じコミットから同じ手順で成果物を作成できる

## 実装ファイル

- `infra/artifact.tf`
- `scripts/build-backend.sh`
- `scripts/build-frontend.sh`
- `scripts/package-application.sh`
- `scripts/upload-artifact.sh`

## 収録メモ

- ナレーション: ElevenLabsで場面単位に生成し、AWS・Spring・Terraformの用語発音を確認する。
- スクリーンキャスト: 講師が実際の操作と検証結果を収録する。
- Codexの提案は、差分・テスト・実行結果を確認してから採用する。

## コミット

このレクチャー終了時のコミットメッセージは、レクチャー名と同じ **JARビルドとアーティファクト配布** とする。
