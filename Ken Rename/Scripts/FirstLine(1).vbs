'�@��  hpo14 (�B)                                                �ݪO  EZsoft
'���D  Re: [�а�] ��.txt�ɦW�۰ʧאּ����Ĥ@���
'�ϥ� arthurs21 (#17bRXwbb) �H�� "JScript���ϥ�ADODB.Stream�P�_���s�X���N�X"
 '                               ( http://www.jb51.net/article/14721.htm )

'�s�X�����G��L�s�X�W�ٽаѦ�
'1. http://msdn.microsoft.com/en-us/library/ms526296%28EXCHG.10%29.aspx
'2. �n���� (HKEY_CLASSES_ROOT\MIME\Database\Charset)

Dim objFSO    : Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim objStream : Set objStream = CreateObject("ADODB.Stream")

'// �]�wŪ���覡
objStream.Mode = 3
objStream.Type = 2

If Wscript.Arguments.Count <> 0 Then
    Dim FilePath()
    For i = 0 to Wscript.Arguments.Count - 1
        '// �]�w�w�]�s�X�榡
        Redim Preserve FilePath(i)
        FilePath(i) = Wscript.Arguments(i)
        objStream.Charset = CheckEnc(FilePath(i))
        objStream.Open
        objStream.LoadFromFile(FilePath(i))
        Line1 = objStream.ReadText(-2)
        objStream.Close
        Set objFile0 = objFSO.GetFile(FilePath(i))
        path = objFSO.GetParentFolderName(objFile0)
        ext = objFSO.GetExtensionName(objFile0)
        newpath = path & "\" & Line1 & "." & ext
        objFSO.MoveFile FilePath(i), newpath
   Next
End If

Function CheckEnc(filename)
    Dim stream : set stream = CreateObject("ADODB.Stream")
    stream.Mode = 3
    stream.Type = 2
    stream.Charset = "437"
    stream.Open
    stream.LoadFromFile(filename)
    Dim bom : bom = Escape(stream.ReadText(2))
    Select case bom
        case "%u2229%u2557"    '// UTF-8 Signature
        case "%B5%F2"
            CheckEnc = "UTF-8"
        case "%A0%u25A0"       '// UTF-16 LE BOM
        case "%u25A0%A0"       '// UTF-16 BE BOM
        case "%5De"            '// UTF-16 LE
        case "e%5D"            '// UTF-16 BE
            CheckEnc = "Unicode"
        case else
            CheckEnc = "US-ASCII"   '// �w�]�w�� ASCII �s�X
    End Select
    stream.Close
    Set stream = Nothing
End Function
