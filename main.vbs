Set objShell = CreateObject("WScript.Shell")

'TXT��TeX�ϊ��̎��s
objShell.Run "src\convert.bat",0,true

'�����R�[�h�A���s�R�[�h�ϊ��̎��s
objShell.Run "src\find_file.vbs",0,true

'�����ʒm
WScript.Echo "����"