Set objShell = CreateObject("WScript.Shell")

Dim objFileSys
Dim objFolder
Dim objFile
 
'ファイルシステムを扱うオブジェクトを作成
Set objFileSys = CreateObject("Scripting.FileSystemObject")

'フォルダのオブジェクトを取得
dir = "converted"
Set objFolder = objFileSys.GetFolder(dir)

' 実行コードの取得
Set objFs = CreateObject("Scripting.FileSystemObject")
Set objFile2 = objFs.OpenTextFile("src\convert.vbs") 
ExecuteGlobal objFile2.ReadAll()
objFile2.Close
Set objFile2 = Nothing

'FolderオブジェクトのFilesプロパティからFileオブジェクトを取得
For Each objFile In objFolder.Files
  tmp = Convert(dir, objFile.Name)
Next
 
Set objFolder = Nothing
Set objFileSys = Nothing
