@echo off
color 17
:main
cls
title システム軽量化ツール
echo.
echo      ======================================
echo.
echo                 システム軽量化ツール
echo.
echo      ======================================
echo.
echo.
echo システム軽量化ツールへようこそ！
echo このツールはパソコンを少しでも軽くするためのサポートをします。
echo.
echo 注意: このツールは絶対にPCが軽くなるわけではありません。
echo また、実行してPCが壊れたりしても責任を負いかねます。
echo 自己責任でご利用ください。
echo.
echo 利用可能なオプション:
echo.
echo A. タスクマネージャーで現在のパフォーマンスを確認する
echo.
echo 1. 不要なプログラムのアンインストール
echo 2. ディスク クリーンアップ
echo 3. 電源設定を高パフォーマンスに設定
echo 4. Windows Update
echo 5. システムのプロパティを開く
echo 6. チェックディスク
echo.
echo O. まだ解決しない場合は...
echo X. 終了
echo.
SET /P ANSWER="実行したい項目を選択してください: "

if /i {%ANSWER%}=={A} (goto :a)
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
if /i {%ANSWER%}=={5} (goto :5)
if /i {%ANSWER%}=={6} (goto :6)
if /i {%ANSWER%}=={o} (goto :o)
if /i {%ANSWER%}=={x} (goto :x)

cls
echo 終了しています...
timeout /t 1 /nobreak > nul
exit /b

:a
title システム軽量化ツール - タスクマネージャーを開いています...
cls
start taskmgr.exe
goto main

:1
title システム軽量化ツール - プログラムのアンインストール
cls
start control.exe /name Microsoft.ProgramsAndFeatures
goto main

:2
cls
title システム軽量化ツール - ディスク クリーンアップ
start "" "cleanmgr.exe"
goto main

:3
cls
title システム軽量化ツール - 電源設定を高パフォーマンスに変更
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
goto main

:4
cls
title システム軽量化ツール - Windows Update
start "" "ms-settings:windowsupdate"
goto main

:5
cls
title システム軽量化ツール - システムのプロパティ
start control.exe sysdm.cpl
goto main

:6
cls
title システム軽量化ツール - チェックディスク
start cmd.exe /c chkdsk c: /f
goto main

:o
cls
title システム軽量化ツール - まだ解決しない場合は...
echo その他のオプション
echo ==================================
echo.
echo 他の手順を試してまだ軽くならない場合は、次の手順をいずれか行ってみてください。
echo.
echo.
echo 1. 再起動する
echo 2. PCを初期化する
echo 3. SSDに換装する
echo.
pause
echo.
goto main

:x
cls
title システム軽量化ツール
color 07
echo 終了しています。
echo.
timeout /t 1 > /nobreak > nul
exit /b