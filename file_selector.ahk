FileSelectFolder, OutputVar, , 3
if OutputVar =
    MsgBox, You didn't select a folder.
else
    MsgBox, You selected folder "%OutputVar%".