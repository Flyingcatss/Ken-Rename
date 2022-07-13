Ken Rename V1.02

Description:
--------------------
This utility lets you rename batch of file, and preview the result before the files 
are renamed.

Feature:
--------------------
# Renaming with macro, high flexibility
# Filter files with wildcard
# Use multi-actions to rename and can change order
# Create a numbered file list
# Can undo rename
# Unicode support
# Set File Attribute
# Multi-Language support
# Select Folder in Windows expldorer with context menu
# Drag Files or Folders from Windows Explorer
# Rename by Preset with Windows Explorer
# Preview rename results are shown immediately
# Export and Import rename file list
# Save actions as Preset
# Picture preview
# Custom keyboard shortcuts
# Command-line support
# External editor tools support(eg: ID3 Tag editor)
# Remember folder history
# Rename group files by filename

Renaming methods:
# Convert to upper or lowercase
# Replace a string with any string
# Use Regular Expression with Replace
# Keep only certain letters of the file name
# Insert or Remove a string by spcified position
# Convert of code page
# ID3v1, ID3v2 tag support
# EXIF tag support
# VBScript support
# HTML, HTTP, URL encode and decode


Setup:
--------------------
Just unpack the program to a new folder, and run it.


Usage:
--------------------
When you run Ken Rename(KR) it will show folder tree and file list. You can choose a 
folder you want to rename, or you may add files by select Add files or Add from 
folders from File Menu.
You can right-click on folder or selected files of Explorer to invoke Ken Rename, 
or drag files to Ken Rename.

If you want to rename specified file type, like text files, you can type "*.txt" in 
Filter text box.
You also can choose Archive, Folder and Hidden, etc. file on Include area.

You can rename sequentially by select files and press F2 (Rename manually),
uncheck "Automatically select next file", Ken Rename will add postfix (1), (2).... to
filename automatically.

When replace a filename with string, you can use Regular Expression to make 
you sophisticated search and replace. This utility use TRegExpr to implement it. 
For more help, check the page:
http://kensoft.0fees.net/SyntaxRegExpr or
http://www.regexpstudio.com/TRegExpr/Help/RegExp_Syntax.html

If you want to use multi-action to rename, you can press Add action. You also 
can change order of action by right click on Action list to choose Up or Down to 
move action. It is very useful when the rename rule very complicated.

You can import file from a list file or clipboard, it makes you can define custom file 
list to rename.

The utility only rename file or folder name, and will not change the file content.

Caution: When you select Subfolder, it will search all files under the selected 
folder. It may take a long time, you can press Stop button (left before Rename) 
on tool bar if you do not want to wait.

If you run the utility get the error message, like "DllRegisterServer in C:\Program 
Files\Ken Rename\KRenameShell.dll failed.", then create a empty file 
[KRename.ini] in "C:\Program Files\Ken Rename" and try again. 
Then Ken Rename will not try to register "KRenameShell.dll" on startup.
(The "KRenameShell.dll" makes you can select files in Explorer and invoke context 
menu to run Ken Rename.)

VBScript Functions online help:
http://www.w3schools.com/VBscript/vbscript_ref_functions.asp

Buffer Lines:
When you want to import bulk of rename file list, like 15000+ lines, usually it will
 take a very long time to load into program.
KR let you set how many buffer lines you want to load on list view. (Default amount is 128)
When you press [Rename], KR still renames all of rename file list, not only show on
 the list view.

Note:
1. If you set buffer lines to 0, KR will load all of rename file list.
2. If you change rename action after Import, it will only effect file that show on
 the file list view.
 
Order by Folder before Rename:
When renaming lots of files, folder and subfolders, when there are files and/or folders
 selected to be renamed that are located in folders that were renamed in the same selection,
  the files and/or folders can't be found because their parent have been renamed.
So you can check the option, KR will change order of files and folders by folder name before
 rename to avoid the problem.
 
Note:
If you set Buffer Lines, KR only sort files and folders show on the list view.

About:
--------------------
If you have any question, feature suggestion or bug report, welcome to post
comment on blog, or e-mail to me
Web:http://kensoft.byethost24.com/ or http://pronet25.googlepages.com/home
Forums:http://kensoft.byethost24.com/phpBB3/
blog:http://myprogramspace.blogspot.com/2008/07/krename-multi-file-rename-tool-v0.html
Copyright(c) 2007,2008 by Kensoft.  All rights reserved.

Credit:
--------------------
TRegExpr class library     Partial Copyright (c) 2004 Andrey V. Sorokin
                                http://RegExpStudio.com
                                mailto:anso@mail.ru

JEDI Visual Component Library
Copyright (c) 2004 by the JVCL Team; all rights reserved.
http://jvcl.sourceforge.net

dEXIF - Copyright 2001-2006, Gerry McGuire

Disclaimer: 
--------------------
THIS SOFTWARE IS DISTRIBUTED "AS IS". NO WARRANTY OF ANY KIND IS 
EXPRESSED OR IMPLIED. YOU USE THIS SOFTWARE AT YOUR OWN RISK. THE 
AUTHOR WILL NOT BE LIABLE FOR DATA LOSS, DAMAGES, LOSS OF PROFITS OR 
ANY OTHER KIND OF LOSS WHILE USING OR MISUSING THIS SOFTWARE.

