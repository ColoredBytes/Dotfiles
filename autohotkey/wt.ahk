SwitchToWindowsTerminal() {
  windowHandleId := WinExist("ahk_exe WindowsTerminal.exe")
  windowExistsAlready := windowHandleId > 0

  ; If the Windows Terminal is already open, determine if we should put it in focus or minimize it.
  if (windowExistsAlready) {
      activeWindowHandleId := WinExist("A")
      windowIsAlreadyActive := (activeWindowHandleId == windowHandleId)

      if (windowIsAlreadyActive) {
          ; Minimize the window.
          WinMinimize, ahk_id %windowHandleId%
      } else {
          ; Put the window in focus.
          WinActivate, ahk_id %windowHandleId%
          WinShow, ahk_id %windowHandleId%
      }
  } else {
      ; Else it's not already open, so launch it.
      Run, % "C:\Users\" A_UserName "\AppData\Local\Microsoft\WindowsApps\wt.exe"
  }
}

; Hotkey to use Ctrl+Alt+T to launch/restore the Windows Terminal.
^!t::SwitchToWindowsTerminal()