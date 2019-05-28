@echo off
setlocal enabledelayedexpansion

cd /d %~dp0
rem 置換後ディレクトリの中身を削除する
rem 呼び出し元ファイルからの相対パスになっているため注意
del /Q ..\converted

cd ..\org
for %%i in (*.txt) do (
  rem ファイル名の拡張子を除いて格納
  set filename=%%i
  set filename=!filename:.txt=!

  rem 1行ずつ読み込む  空白行を処理するため行番号を表示する
  rem 行番号部分を%%A、残りを%%Bに格納する
  for /f "delims=: tokens=1*" %%A in ('findstr /n "^" %%i') do (

    rem 末尾に\\を追加
    set line=%%B\\

    rem 置換後ディレクトリに移動、書き込み
    cd %~dp0
    cd ..\converted
    echo !line!>> !filename!.tex

    cd %~dp0
    cd ..\org
  )
)

endlocal
