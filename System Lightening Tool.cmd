@echo off
color 17
:main
cls
title �V�X�e���y�ʉ��c�[��
echo.
echo      ======================================
echo.
echo                 �V�X�e���y�ʉ��c�[��
echo.
echo      ======================================
echo.
echo.
echo �V�X�e���y�ʉ��c�[���ւ悤�����I
echo ���̃c�[���̓p�\�R���������ł��y�����邽�߂̃T�|�[�g�����܂��B
echo.
echo ����: ���̃c�[���͐�΂�PC���y���Ȃ�킯�ł͂���܂���B
echo �܂��A���s����PC����ꂽ�肵�Ă��ӔC�𕉂����˂܂��B
echo ���ȐӔC�ł����p���������B
echo.
echo ���p�\�ȃI�v�V����:
echo.
echo A. �^�X�N�}�l�[�W���[�Ō��݂̃p�t�H�[�}���X���m�F����
echo.
echo 1. �s�v�ȃv���O�����̃A���C���X�g�[��
echo 2. �f�B�X�N �N���[���A�b�v
echo 3. �d���ݒ�����p�t�H�[�}���X�ɐݒ�
echo 4. Windows Update
echo 5. �V�X�e���̃v���p�e�B���J��
echo 6. �`�F�b�N�f�B�X�N
echo.
echo O. �܂��������Ȃ��ꍇ��...
echo X. �I��
echo.
SET /P ANSWER="���s���������ڂ�I�����Ă�������: "

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
echo �I�����Ă��܂�...
timeout /t 1 /nobreak > nul
exit /b

:a
title �V�X�e���y�ʉ��c�[�� - �^�X�N�}�l�[�W���[���J���Ă��܂�...
cls
start taskmgr.exe
goto main

:1
title �V�X�e���y�ʉ��c�[�� - �v���O�����̃A���C���X�g�[��
cls
start control.exe /name Microsoft.ProgramsAndFeatures
goto main

:2
cls
title �V�X�e���y�ʉ��c�[�� - �f�B�X�N �N���[���A�b�v
start "" "cleanmgr.exe"
goto main

:3
cls
title �V�X�e���y�ʉ��c�[�� - �d���ݒ�����p�t�H�[�}���X�ɕύX
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
goto main

:4
cls
title �V�X�e���y�ʉ��c�[�� - Windows Update
start "" "ms-settings:windowsupdate"
goto main

:5
cls
title �V�X�e���y�ʉ��c�[�� - �V�X�e���̃v���p�e�B
start control.exe sysdm.cpl
goto main

:6
cls
title �V�X�e���y�ʉ��c�[�� - �`�F�b�N�f�B�X�N
start cmd.exe /c chkdsk c: /f
goto main

:o
cls
title �V�X�e���y�ʉ��c�[�� - �܂��������Ȃ��ꍇ��...
echo ���̑��̃I�v�V����
echo ==================================
echo.
echo ���̎菇�������Ă܂��y���Ȃ�Ȃ��ꍇ�́A���̎菇�������ꂩ�s���Ă݂Ă��������B
echo.
echo.
echo 1. �ċN������
echo 2. PC������������
echo 3. SSD�Ɋ�������
echo.
pause
echo.
goto main

:x
cls
title �V�X�e���y�ʉ��c�[��
color 07
echo �I�����Ă��܂��B
echo.
timeout /t 1 > /nobreak > nul
exit /b