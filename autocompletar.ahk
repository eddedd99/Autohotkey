::btw::
MsgBox You typed "btw".
return

:*:]d::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

:*:]e::edcruces@yahoo.com.mx
return

;Para que funcione con enters
;  :*:+1::1edcruces@yahoo.com.mx{Enter}
;  :*:+2::2edcruces@yahoo.com.mx{Enter}
;  :*:+3::3edcruces@yahoo.com.mx{Enter}
;  :*:+4::4edcruces@yahoo.com.mx{Enter}
;  :*:+5::5edcruces@yahoo.com.mx{Enter}
;  return


:*:+1::1edcruces@yahoo.com.mx{tab}
:*:+2::2edcruces@yahoo.com.mx{tab}
:*:+3::3edcruces@yahoo.com.mx{tab}
:*:+4::4edcruces@yahoo.com.mx{tab}
:*:+5::5edcruces@yahoo.com.mx{tab}
return
