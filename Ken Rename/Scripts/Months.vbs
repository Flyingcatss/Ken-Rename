Dim n

Function Rename(strPath, strName, strExt, bIsFolder)

Dim months(12)

n = n + 1
months(1) = "Jan"
months(2) = "Feb"
months(3) = "Mar"
months(4) = "Apr"
months(5) = "May"
months(6) = "Jun"
months(7) = "Jul"
months(8) = "Aug"
months(9) = "Sep"
months(10) = "Oct"
months(11) = "Nov"
months(12) = "Dec"

Rename = months(n) + "@" + strName + strExt

End Function
