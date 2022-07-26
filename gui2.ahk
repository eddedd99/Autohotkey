gui, add, edit, w600  ; Add a fairly wide edit control at the top of the window.
gui, add, text, section, First Name:  ; Save this control's position and start a new section.
gui, add, text,, Last Name:
gui, add, edit, ys  ; Start a new column within this section.
gui, add, edit
gui, show
