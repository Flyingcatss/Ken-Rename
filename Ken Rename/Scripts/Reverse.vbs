Function Rename(strPath, strName, strExt, bIsFolder)

If bIsFolder Then
  Rename = strName + strExt
Else
  Rename = StrReverse(strName) + strExt
End If

End Function