; A script to isolate email adresses from a text file.
; Saves these emails to email_adresses.txt in the same folder.

AdressCount := 0 ; By default, 0
NewPos := 1

Arg1 = %1%
If (Arg1) ; If drag-n-dropped file
	File := Arg1 
else
	FileSelectFile, file,,, Select a Text File to Extract email adresses from:
If (ErrorLevel)
	ExitApp

SplitPath, file,, directory

Loop, Read, %file% ; Start reading the file, line by line
{
	Line := A_LoopReadLine
	Loop
	{
		Pos := RegExMatch(Line, "([\w\d\.]+@[\w\d.]+\.[\w]{2,4})", Output, NewPos)
		If (Output1) ; Match exists	
		{
			FileAppend %Output1%`n, %directory%\email_adresses.txt
			++AdressCount
			NewPos := Pos + StrLen(Output1)
		}
		else ; Else reset vars
		{
			Pos := "", NewPos := "1" ; Null
			break
		}
	}
}
If (AdressCount = 1)
	Traytip, Done!, Found %AdressCount% email adress, 3
else
	Traytip, Done!, Found %AdressCount% email adresses, 3
Sleep 3000
ExitApp
