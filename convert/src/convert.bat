@echo off
setlocal enabledelayedexpansion

cd /d %~dp0
rem �u����f�B���N�g���̒��g���폜����
rem �Ăяo�����t�@�C������̑��΃p�X�ɂȂ��Ă��邽�ߒ���
del /Q ..\converted

cd ..\org
for %%i in (*.txt) do (
  rem �t�@�C�����̊g���q�������Ċi�[
  set filename=%%i
  set filename=!filename:.txt=!

  rem 1�s���ǂݍ���  �󔒍s���������邽�ߍs�ԍ���\������
  rem �s�ԍ�������%%A�A�c���%%B�Ɋi�[����
  for /f "delims=: tokens=1*" %%A in ('findstr /n "^" %%i') do (

    rem ������\\��ǉ�
    set line=%%B\\

    rem �u����f�B���N�g���Ɉړ��A��������
    cd %~dp0
    cd ..\converted
    echo !line!>> !filename!.tex

    cd %~dp0
    cd ..\org
  )
)

endlocal
