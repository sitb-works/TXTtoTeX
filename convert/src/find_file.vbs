Set objShell = CreateObject("WScript.Shell")

Dim objFileSys
Dim objFolder
Dim objFile
 
'�t�@�C���V�X�e���������I�u�W�F�N�g���쐬
Set objFileSys = CreateObject("Scripting.FileSystemObject")

'�t�H���_�̃I�u�W�F�N�g���擾
dir = "converted"
Set objFolder = objFileSys.GetFolder(dir)

' ���s�R�[�h�̎擾
Set objFs = CreateObject("Scripting.FileSystemObject")
Set objFile2 = objFs.OpenTextFile("src\convert.vbs") 
ExecuteGlobal objFile2.ReadAll()
objFile2.Close
Set objFile2 = Nothing

'Folder�I�u�W�F�N�g��Files�v���p�e�B����File�I�u�W�F�N�g���擾
For Each objFile In objFolder.Files
  tmp = Convert(dir, objFile.Name)
Next
 
Set objFolder = Nothing
Set objFileSys = Nothing
