FileSelectFolder, OutputVar, , 3
if OutputVar =
    MsgBox, You didn't select a folder.
else
    MsgBox, You selected folder "%OutputVar%".

; CLSID Example:
FileSelectFolder, OutputVar, ::{20d04fe0-3aea-1069-a2d8-08002b30309d}  ; My Computer.