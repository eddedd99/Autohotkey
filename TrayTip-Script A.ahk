TrayTip, My Title, Multiline`nText, 20, 17

; To have more precise control over the display time without
; having to use Sleep (which stops the current thread):
#Persistent
TrayTip, Timed TrayTip, This will be displayed for 3 seconds.
SetTimer, RemoveTrayTip, 3000
return

RemoveTrayTip:
SetTimer, RemoveTrayTip, Off
TrayTip
return

; To have a TrayTip permanently displayed, use a timer to refresh it periodically:
SetTimer, RefreshTrayTip, 1000
Gosub, RefreshTrayTip  ; Call it once to get it started right away.
return

RefreshTrayTip:
TrayTip, Refreshed TrayTip, This is a more permanent TrayTip., , 16
return