@echo off
cd /d %~dp0

echo apk2WSA�����悱������C���X�g�[���[
echo Windows Subsystem for Android�ɃA�v���������C���X�g�[�����܂��B
echo �Ɛӎ���
echo ���̃v���O�����𗘗p���Ĕ��������S�Ă̎����A���Q�ɂ��āA����҂͈�؂̐ӔC�𕉂����˂܂��B�܂��A����͌����̃C���X�g�[�����@�ł͂���܂���B
pause;
echo ����ł͑����n�߂܂��傤�B�܂���adb���C���X�g�[������Ă��邩���`�F�b�N���܂��B
echo;
adb
echo;
echo �����Ƒ����̕����񂪕\������܂�����?�\�����ꂽ�ꍇ�͉����L�[�������Ă��������B�\������Ȃ��ꍇ��adb�����s�\���ł��̂ł��̉�ʂ���ăZ�b�g�A�b�v���Ă���ēx���s���Ă��������B
pause;
echo �ł͎��ɕK�{�t�@�C�����_�E�����[�h���܂��B���΂炭���҂����������B
echo;
bitsadmin /transfer chayastore https://github.com/Yokokiri-Cha/Chayastore/releases/download/chayastore/chaya.apk  %cd%/chaya.apk
echo;
echo �_�E�����[�h���������܂����B
echo ���̃X�e�b�v�ɐi�ނɂ͉����L�[�������Ă��������B
echo;
pause;
echo �ł̓C���X�g�[����Ƃ��J�n���܂��B
echo �܂���Android�pWindows�T�u�V�X�e���ݒ�A�v�����J���Ă��������B���ɍ��x�ȃl�b�g���[�N���I�t�ɂ��A�J���҃��j���[���J����,�J���҃��[�h���I���ɂ��܂��B���ׂďI�������V�X�e���^�u��I�����ĉ������B
pause;
echo ���̏�Ԃ�Amazon �A�v���X�g�A���J���Ă��������B���̌�J���҃^�u���J���Ă��������B
echo ����ƁA�J���҃��j���[��ADB�p�̐ڑ��悪�\������܂��B����������ɓ��͂��ĉ�����
echo;
set IN=
set /p IN="�ڑ���A�h���X����͂��ĉ�����:"
echo; 
adb connect %IN%
echo;
echo �ڑ��ɐ������܂�����?Unable to connect�ƕ\������Ă��Ȃ����OK�ł��B
echo �������Ă��Ȃ���΂��萔�ł����ŏ������蒼���Ă��������B
echo;
pause;
echo ����ł̓C���X�g�[�����܂��B���΂炭���҂����������B
echo;
adb install -r -d chaya.apk
echo;
echo �C���X�g�[����Ƃ��I�����܂����B���̎��_�ŃX�^�[�g���j���[���ɃA�v���������C���X�g�[������Ă��Ȃ��ꍇ�͂�����x�������������B
echo �����p�����������肪�Ƃ��������܂���!Windows Subsystem for Android�ł��悱���̃A�v���𐥔񂲗��p������!
echo �����L�[�������ƏI�����܂��B
pause;
