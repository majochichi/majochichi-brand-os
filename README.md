# 魔女chichi Brand OS｜LINE & Instagram Version 4

Version 3.4を基盤にしたスマホ対応PWA版です。

## Version 4で追加したもの
- manifest.webmanifest
- service worker
- ホーム画面追加対応
- standalone表示
- オフライン起動用キャッシュ
- iPhone / Android / タブレット / PC レスポンシブ対応
- LINE ITEMS / LINE ADS のスマホカード表示
- スマホ向け横スクロールナビゲーション
- タップ領域拡大
- 編集フォーム1カラム化
- スマホで保存ボタンを下部固定
- AD GENERATORのスマホ縮小表示・既存レイヤー操作維持
- オフライン表示
- localStorageアクセスをStorageLayerへ集約
- Version 4 JSONバックアップ

## 重要：PWAはHTMLを直接開くだけでは動きません
`file:///.../index.html` として直接開いた場合、Brand OS本体は使えますが、
service worker / オフラインキャッシュ / PWAインストールはブラウザ仕様上利用できません。

PWAとして利用するには、HTTPSで公開するか、PC上では localhost で配信してください。

### Windows PCで試す
Pythonが入っている場合：
1. このフォルダの `start_local_server_windows.bat` を実行
2. PCブラウザで `http://localhost:8000` を開く

### スマートフォンで本当にホーム画面へ追加する
最も確実なのは、このフォルダをHTTPS対応のWebホスティングへ置く方法です。
Version 4ではクラウド同期は実装していません。

## データについて
Version 4もlocalStorage保存です。
PCとスマホは別々のデータになります。
移行は「JSON書き出し」→「JSON読込」で行ってください。

ASSETSの画像本体はIndexedDB保存のため、JSONには含まれません。
必要な端末ではASSETSから画像を再登録してください。

## Version 5候補
- PC・スマホのクラウド同期
- ログイン
- クラウドDB
- ASSETS画像のクラウド保管
