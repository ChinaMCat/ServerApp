@echo off

::Э���ļ�·��, ���Ҫ����\������
set SOURCE_FOLDER=protos

::C#������·��
set CS_COMPILER_PATH=protogen.exe
::C#�ļ�����·��, ���Ҫ����\������
set CS_TARGET_PATH=cs

::���������ļ�
for /f "delims=" %%i in ('dir /b "%SOURCE_FOLDER%\*.proto"') do (
    
    ::���� C# ����
    echo %CS_COMPILER_PATH% -i:%SOURCE_FOLDER%\%%i -o:%CS_TARGET_PATH%\%%~ni.cs
    %CS_COMPILER_PATH% -i:%SOURCE_FOLDER%\%%i -o:%CS_TARGET_PATH%\%%~ni.cs

)

echo Э��������ϡ�

pause