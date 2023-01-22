@echo off
cd /d %~dp0

echo apk2WSA茶屋よこ霧自作インストーラー
echo Windows Subsystem for Androidにアプリ茶屋をインストールします。
echo 免責事項
echo このプログラムを利用して発生した全ての事柄、損害について、製作者は一切の責任を負いかねます。また、これは公式のアプリのインストール方法ではありません。
pause;
echo それでは早速始めましょう。まずはadbがインストールされているかをチェックします。
echo;
adb
echo;
echo ずらりと多くの文字列が表示されましたか?表示された場合は何かキーを押してください。表示されない場合はadb環境が不十分ですのでこの画面を閉じてセットアップしてから再度実行してください。
pause;
echo では次に必須ファイルをダウンロードします。しばらくお待ちください。
echo;
bitsadmin /transfer chayastore https://github.com/Yokokiri-Cha/Chayastore/releases/download/chayastore/chaya.apk  %cd%/chaya.apk
echo;
echo ダウンロードが完了しました。
echo 次のステップに進むには何かキーを押してください。
echo;
pause;
echo ではインストール作業を開始します。
echo まずはAndroid用Windowsサブシステム設定アプリを開いてください。次に高度なネットワークをオフにし、開発者メニューを開いて,開発者モードをオンにします。
echo すべて終わったら、システムタブ上部の"ファイル"を押してファイルマネージャーが完全起動するまで待ってから何かキーをこの画面上で押してください。
pause;
echo 接続中です。
echo; 
adb connect 127.0.0.1:58526
echo;
echo 接続に成功しましたか?Unable to connectと表示されていなければOKです。
echo 成功していなければお手数ですが最初からやり直してください。
echo;
pause;
echo それではインストールします。しばらくお待ちください。
echo;
adb install -r -d chaya.apk
echo;
echo インストール作業を終了しました。この時点でスタートメニュー等にアプリ茶屋がインストールされていない場合はもう一度お試し下さい。
echo ご利用いただきありがとうございました!Windows Subsystem for Androidでもよこ霧のアプリを是非ご利用下さい!
echo 何かキーを押すと終了します。
pause;
