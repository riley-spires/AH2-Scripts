#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1

#Include "../VD.ahk/VD.ah2"

; Environment Variables
localAppData := EnvGet("localappdata")

; Function Declarations
goToDesktop(num) {
    if VD.getCount() < num {
        Loop num - VD.getCount() {
            VD.createDesktop()
        }
    }

    VD.goToDesktopNum(num)
}

; Virtual Desktops
#1::goToDesktop(1)
#2::goToDesktop(2)
#3::goToDesktop(3)
#4::goToDesktop(4)
#5::goToDesktop(5)
#6::goToDesktop(6)
#7::goToDesktop(7)
#8::goToDesktop(8)
#9::goToDesktop(9)
#0::goToDesktop(10)

#+1::VD.MoveWindowToDesktopNum("A", 1).follow()
#+2::VD.MoveWindowToDesktopNum("A", 2).follow()
#+3::VD.MoveWindowToDesktopNum("A", 3).follow()
#+4::VD.MoveWindowToDesktopNum("A", 4).follow()
#+5::VD.MoveWindowToDesktopNum("A", 5).follow()
#+6::VD.MoveWindowToDesktopNum("A", 6).follow()
#+7::VD.MoveWindowToDesktopNum("A", 7).follow()
#+8::VD.MoveWindowToDesktopNum("A", 8).follow()
#+9::VD.MoveWindowToDesktopNum("A", 9).follow()
#+0::VD.MoveWindowToDesktopNum("A", 10).follow()

; Close Active Window
#c::WinClose("A")

; Open Applications
#Enter::Run("wt.exe")
#z::Run(localAppData . "/Vivaldi/Application/vivaldi.exe")
