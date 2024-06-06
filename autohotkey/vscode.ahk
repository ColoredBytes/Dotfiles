SwitchToVSCode()
{
  windowHandleId := WinExist("ahk_exe Code.exe")
  windowExistsAlready := windowHandleId > 0

  ; If Visual Studio Code is already open, determine if we should put it in focus or minimize it.
  if (windowExistsAlready = true)
  {
    activeWindowHandleId := WinExist("A")
    windowIsAlreadyActive := activeWindowHandleId == windowHandleId

    if (windowIsAlreadyActive)
    {
      ; Minimize the window.
      WinMinimize, ahk_id %windowHandleId%
    }
    else
    {
      ; Put the window in focus.
      WinActivate, ahk_id %windowHandleId%
      WinShow, ahk_id %windowHandleId%
    }
  }
  ; Else it's not already open, so launch it.
  else
  {
    Run, "C:\Users\rossj25\AppData\Local\Programs\Microsoft VS Code\Code.exe"
  }
}

; Hotkey to use Ctrl+Alt+V to launch/restore Visual Studio Code.
^!v::SwitchToVSCode()
