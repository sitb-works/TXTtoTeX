Function Convert(filepath, filename)

'http://neos21.hatenablog.com/entry/2016/03/25/074343 �����ƂɈꕔ�ύX
'�t�@�C���̕����R�[�h�A���s�R�[�h�̕ύX
'�ǂݍ��݃t�@�C���̎w��
Dim input
Set input = CreateObject("ADODB.Stream")
input.Type = 2    '1�F�o�C�i��, 2�F�e�L�X�g
input.Charset = "Shift_JIS"   
input.Open    'Stream �I�u�W�F�N�g���J��
input.LoadFromFile filepath&"\"&filename    '�t�@�C����ǂݍ���

'�����o���t�@�C���̎w��
Dim output
Set output = CreateObject("ADODB.Stream")
output.Type = 2
output.Charset = "UTF-8"
output.Open

'�ǂݍ��݃t�@�C������1�s���ǂݍ��݁A�����o���t�@�C���ɏ����o���̂��ŏI�s�܂ŌJ��Ԃ�
Dim records
Do Until input.EOS
  Dim lineStr
    lineStr = input.ReadText(-2)    '-1�F�S�s�ǂݍ���, -2�F��s�ǂݍ���
    output.WriteText lineStr, 0    '0�F������̂ݏ�������, 1�F������ + ���s����������
    output.WriteText vbLf	'���s�R�[�hLF��������
 
Loop

'�����o���t�@�C���̕ۑ�
output.SaveToFile filepath&"\"&filename, 2    '1�F�w��t�@�C�����Ȃ���ΐV�K�쐬, 2�F�t�@�C��������ꍇ�͏㏑��

'Stream �����
input.Close
output.Close

End Function
