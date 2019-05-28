Function Convert(filepath, filename)

'http://neos21.hatenablog.com/entry/2016/03/25/074343 をもとに一部変更
'ファイルの文字コード、改行コードの変更
'読み込みファイルの指定
Dim input
Set input = CreateObject("ADODB.Stream")
input.Type = 2    '1：バイナリ, 2：テキスト
input.Charset = "Shift_JIS"   
input.Open    'Stream オブジェクトを開く
input.LoadFromFile filepath&"\"&filename    'ファイルを読み込む

'書き出しファイルの指定
Dim output
Set output = CreateObject("ADODB.Stream")
output.Type = 2
output.Charset = "UTF-8"
output.Open

'読み込みファイルから1行ずつ読み込み、書き出しファイルに書き出すのを最終行まで繰り返す
Dim records
Do Until input.EOS
  Dim lineStr
    lineStr = input.ReadText(-2)    '-1：全行読み込み, -2：一行読み込み
    output.WriteText lineStr, 0    '0：文字列のみ書き込み, 1：文字列 + 改行を書き込み
    output.WriteText vbLf	'改行コードLF書き込み
 
Loop

'書き出しファイルの保存
output.SaveToFile filepath&"\"&filename, 2    '1：指定ファイルがなければ新規作成, 2：ファイルがある場合は上書き

'Stream を閉じる
input.Close
output.Close

End Function
