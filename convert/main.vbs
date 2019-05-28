Set objShell = CreateObject("WScript.Shell")

'TXT→TeX変換の実行
objShell.Run "src\convert.bat",0,true

'文字コード、改行コード変換の実行
objShell.Run "src\find_file.vbs",0,true

'完了通知
WScript.Echo "完了"