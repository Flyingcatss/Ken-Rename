Option Explicit

Function TrimExt(File)
  Dim i

  i = InStrRev(File, ".")
  If i > 0 Then
    TrimExt = Left(File, i - 1)
  Else
    TrimExt = File
  End If
End Function

Function Rename(strPath, strName, strExt, bIsFolder)
  Dim fso,dir,f,s

  Set fso = CreateObject("Scripting.FileSystemObject")
  Set dir = fso.GetFolder(strPath & strName)

  For Each f In dir.Files
	  s = TrimExt(f.Name)
	  Exit For
  Next

  Rename = s
End Function