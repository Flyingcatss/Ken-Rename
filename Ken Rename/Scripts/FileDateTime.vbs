Function Rename(strPath, strName, strExt, bIsFolder)
  Dim fso, fileobj, fdt
  Set fso = CreateObject("Scripting.FileSystemObject")
  Set fileobj = fso.GetFile(strPath + strName + strExt)
  fdt = fileobj.DateCreated
  Rename = Year(fdt) & "@" & Month(fdt) & ";" & strName & strExt
End Function