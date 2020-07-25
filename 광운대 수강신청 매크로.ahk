#NoEnv
#Persistent             ; 실행 유지(ExitApp로 종료)
#SingleInstance force   ; 중복실행시 다시 실행
#NoTrayIcon

SetBatchLines, -1       ; 스크립트 실행속도 최대
SetMouseDelay, 0
SetKeyDelay, 0
SetControlDelay, 0

SplitPath, A_ScriptFullPath, , , , scriptName   ; 확장자를 제외한 스크립트 파일명 추출

; 임시 폴더 생성
FileCreateDir, %A_Temp%\%scriptName%
; 이미지서치 파일 포함
FileInstall, img\1.bmp, %A_Temp%\%scriptName%\1.bmp, 1
FileInstall, img\2.bmp, %A_Temp%\%scriptName%\2.bmp, 1
FileInstall, img\3.bmp, %A_Temp%\%scriptName%\3.bmp, 1
FileInstall, img\4.bmp, %A_Temp%\%scriptName%\4.bmp, 1
FileInstall, img\5.bmp, %A_Temp%\%scriptName%\5.bmp, 1
FileInstall, img\6.bmp, %A_Temp%\%scriptName%\6.bmp, 1
FileInstall, img\7.bmp, %A_Temp%\%scriptName%\7.bmp, 1
FileInstall, img\8.bmp, %A_Temp%\%scriptName%\8.bmp, 1

; 설정 파일 읽기
IniRead, 학번, %scriptName%.ini, 광운대 수강신청 매크로, id, %A_Space%
IniRead, 비밀번호, %scriptName%.ini, 광운대 수강신청 매크로, pw, %A_Space%
IniRead, aa, %scriptName%.ini, 광운대 수강신청 매크로, aa, %A_Space%
IniRead, ba, %scriptName%.ini, 광운대 수강신청 매크로, ba, %A_Space%
IniRead, ca, %scriptName%.ini, 광운대 수강신청 매크로, ca, %A_Space%
IniRead, da, %scriptName%.ini, 광운대 수강신청 매크로, da, %A_Space%
IniRead, ea, %scriptName%.ini, 광운대 수강신청 매크로, ea, %A_Space%
IniRead, fa, %scriptName%.ini, 광운대 수강신청 매크로, fa, %A_Space%
IniRead, ga, %scriptName%.ini, 광운대 수강신청 매크로, ga, %A_Space%
IniRead, ha, %scriptName%.ini, 광운대 수강신청 매크로, ha, %A_Space%
IniRead, ia, %scriptName%.ini, 광운대 수강신청 매크로, ia, %A_Space%
IniRead, ab, %scriptName%.ini, 광운대 수강신청 매크로, ab, %A_Space%
IniRead, bb, %scriptName%.ini, 광운대 수강신청 매크로, bb, %A_Space%
IniRead, cb, %scriptName%.ini, 광운대 수강신청 매크로, cb, %A_Space%
IniRead, db, %scriptName%.ini, 광운대 수강신청 매크로, db, %A_Space%
IniRead, eb, %scriptName%.ini, 광운대 수강신청 매크로, eb, %A_Space%
IniRead, fb, %scriptName%.ini, 광운대 수강신청 매크로, fb, %A_Space%
IniRead, gb, %scriptName%.ini, 광운대 수강신청 매크로, gb, %A_Space%
IniRead, hb, %scriptName%.ini, 광운대 수강신청 매크로, hb, %A_Space%
IniRead, ib, %scriptName%.ini, 광운대 수강신청 매크로, ib, %A_Space%
IniRead, ac, %scriptName%.ini, 광운대 수강신청 매크로, ac, %A_Space%
IniRead, bc, %scriptName%.ini, 광운대 수강신청 매크로, bc, %A_Space%
IniRead, cc, %scriptName%.ini, 광운대 수강신청 매크로, cc, %A_Space%
IniRead, dc, %scriptName%.ini, 광운대 수강신청 매크로, dc, %A_Space%
IniRead, ec, %scriptName%.ini, 광운대 수강신청 매크로, ec, %A_Space%
IniRead, fc, %scriptName%.ini, 광운대 수강신청 매크로, fc, %A_Space%
IniRead, gc, %scriptName%.ini, 광운대 수강신청 매크로, gc, %A_Space%
IniRead, hc, %scriptName%.ini, 광운대 수강신청 매크로, hc, %A_Space%
IniRead, ic, %scriptName%.ini, 광운대 수강신청 매크로, ic, %A_Space%

; 메인창 생성
Gui, Add, Text, w35, 학번:
Gui, Add, Edit, x+0 w67 r1 Limit10 v학번, %학번%
Gui, Add, Text, x+30 w60, 비밀번호:
Gui, Add, Edit, x+0 w130 r1 Password v비밀번호, %비밀번호%

Gui, Add, Text, Section xm0 w20, Q:
Gui, Add, Edit, x+0 w92 r1 Limit14 vaa gInput, %aa%
Gui, Add, Text, xs+0 w20, W:
Gui, Add, Edit, x+0 w92 r1 Limit14 vba gInput, %ba%
Gui, Add, Text, xs+0 w20, E:
Gui, Add, Edit, x+0 w92 r1 Limit14 vca gInput, %ca%
Gui, Add, Text, xs+0 w20, R:
Gui, Add, Edit, x+0 w92 r1 Limit14 vda gInput, %da%
Gui, Add, Text, xs+0 w20, T:
Gui, Add, Edit, x+0 w92 r1 Limit14 vea gInput, %ea%
Gui, Add, Text, xs+0 w20, Y:
Gui, Add, Edit, x+0 w92 r1 Limit14 vfa gInput, %fa%
Gui, Add, Text, xs+0 w20, U:
Gui, Add, Edit, x+0 w92 r1 Limit14 vga gInput, %ga%
Gui, Add, Text, xs+0 w20, I:
Gui, Add, Edit, x+0 w92 r1 Limit14 vha gInput, %ha%
Gui, Add, Text, xs+0 w20, O:
Gui, Add, Edit, x+0 w92 r1 Limit14 via gInput, %ia%

Gui, Add, Text, Section x+10 ys+0 w20, A:
Gui, Add, Edit, x+0 w92 r1 Limit14 vab gInput, %ab%
Gui, Add, Text, xs+0 w20, S:
Gui, Add, Edit, x+0 w92 r1 Limit14 vbb gInput, %bb%
Gui, Add, Text, xs+0 w20, D:
Gui, Add, Edit, x+0 w92 r1 Limit14 vcb gInput, %cb%
Gui, Add, Text, xs+0 w20, F:
Gui, Add, Edit, x+0 w92 r1 Limit14 vdb gInput, %db%
Gui, Add, Text, xs+0 w20, G:
Gui, Add, Edit, x+0 w92 r1 Limit14 veb gInput, %eb%
Gui, Add, Text, xs+0 w20, H:
Gui, Add, Edit, x+0 w92 r1 Limit14 vfb gInput, %fb%
Gui, Add, Text, xs+0 w20, J:
Gui, Add, Edit, x+0 w92 r1 Limit14 vgb gInput, %gb%
Gui, Add, Text, xs+0 w20, K:
Gui, Add, Edit, x+0 w92 r1 Limit14 vhb gInput, %hb%
Gui, Add, Text, xs+0 w20, L:
Gui, Add, Edit, x+0 w92 r1 Limit14 vib gInput, %ib%

Gui, Add, Text, Section x+10 ys+0 w20, Z:
Gui, Add, Edit, x+0 w92 r1 Limit14 vac gInput, %ac%
Gui, Add, Text, xs+0 w20, X:
Gui, Add, Edit, x+0 w92 r1 Limit14 vbc gInput, %bc%
Gui, Add, Text, xs+0 w20, C:
Gui, Add, Edit, x+0 w92 r1 Limit14 vcc gInput, %cc%
Gui, Add, Text, xs+0 w20, V:
Gui, Add, Edit, x+0 w92 r1 Limit14 vdc gInput, %dc%
Gui, Add, Text, xs+0 w20, B:
Gui, Add, Edit, x+0 w92 r1 Limit14 vec gInput, %ec%
Gui, Add, Text, xs+0 w20, N:
Gui, Add, Edit, x+0 w92 r1 Limit14 vfc gInput, %fc%
Gui, Add, Text, xs+0 w20, M:
Gui, Add, Edit, x+0 w92 r1 Limit14 vgc gInput, %gc%
Gui, Add, Text, xs+0 w20, ,:
Gui, Add, Edit, x+0 w92 r1 Limit14 vhc gInput, %hc%
Gui, Add, Text, xs+0 w20, .:
Gui, Add, Edit, x+0 w92 r1 Limit14 vic gInput, %ic%

Gui, Add, Text, xm0 y+10, Delete: 학정번호란 비우기
Gui, Add, Text, Section x+50 yp+0, Esc: 프로그램 종료
Gui, Add, Text, xm0 y+5, F1: 수강신청 버튼
Gui, Add, Text, x+20 yp+0, F4: 수강삭제 버튼
Gui, Add, Text, x+20 yp+0, F5: 로그인 정보 입력
Gui, Add, Text, xm0 y+5, ScrollLock on: 매크로 작동
Gui, Add, Text, xs+0 yp+0, ScrollLock off: 매크로 중지

Gui, Show, Center, 광운대 수강신청 매크로

; 메시지창 생성
Gui, msg:Add, Edit, x0 y0 w300 h200 Multi v메시지 HwndhEdit
Gui, msg:+MinSize300x +Resize +ToolWindow   ; 최소화 단추 없애기, 크기조절 가능

SetScrollLockState, On

SetTimer, Timer, 100
Return


Input:
GuiControl, -g, %A_GuiControl%
GuiControlGet, str, , %A_GuiControl%
num := 숫자만(str)
StringLen, len, num
StringMid, temp, num, 1, 4
str := temp
If (len >= 5)
{
    str .= "-"
    StringMid, temp, num, 5, 1
    str .= temp
}
If (len >= 6)
{
    str .= "-"
    StringMid, temp, num, 6, 4
    str .= temp
}
If (len >= 10)
{
    str .= "-"
    StringMid, temp, num, 10, 2
    str .= temp
}
GuiControl, , %A_GuiControl%, %str%
Send, {End}
Gui, Submit, NoHide
GuiControl, +gInput, %A_GuiControl%
Return


Timer:
; 과부하방지 인증번호 자동 입력
IfWinExist, 대학 수강신청(과부하방지)
{
    ControlGetText, num, Static1, 대학 수강신청(과부하방지)
    num := 숫자만(num)
    ControlSetText, Edit1, %num%, 대학 수강신청(과부하방지)
    ControlClick, Button1, 대학 수강신청(과부하방지)
}
; 메시지박스 창을 수강신청 창 옆으로 이동
WinGetPos, xx, yy, ww, , ahk_exe MDmain.exe
xx += ww
If (xx != "" && yy != "")   ; 창 닫혔을 때 오류뜨는 거 방지
{
    Gui msg:+LastFound
    WinMove, xx, yy
}
; 메시지박스 가로채기
IfWinExist, 수강신청 ahk_class #32770
{
    WinGetText, msg, 수강신청, 확인
    msg := RegExReplace(msg, "확인|취소|\R", "")    ; 쓸데없는 텍스트 자르기
    If (msg != "")
    {
        ControlClick, Button1, 수강신청, 확인       ; 확인 버튼 클릭
        Gui, msg:Submit, NoHide
        GuiControl, msg:, 메시지, %메시지%%msg%`n------------------------------------------------`n
        Gui, msg:Show, , 메시지박스
        ; DllCall("SendMessage", UInt, hEdit, UInt, 0xB6, UInt, 0, UInt, DllCall("SendMessage", UInt, hEdit, UInt, 0xBA)) ; 스크롤 맨 아래로
        PostMessage, 0x115, 7, 0, , ahk_id %hEdit%  ; 스크롤 맨 아래로
        WinActivate, 수강신청
    }
}
Return


; 메시지창 크기 조절 시
msgGuiSize:
GuiControl, msg:Move, 메시지, w%A_GuiWidth% h%A_GuiHeight%  ; 창크기 변경 대응
Return


; 이 이후로 수강신청 창이 존재할 때만 핫키 작동
#IfWinExist 수강신청 ahk_exe MDmain.exe


F5::
Gui, Submit, NoHide
WinActivate, 광운대학교 학부 수강신청 시스템
num := ""
xx := 125
; 인증번호 인식
Loop, 4
{
    Loop, 8
    {
        ImageSearch, , , xx, 230, xx + 15, 260, %A_Temp%\%scriptName%\%A_Index%.bmp
        If ErrorLevel = 2
        {
            MsgBox, 이미지서치 오류
            Return
        }
        Else If ErrorLevel = 0
        {
            num .= A_Index
            xx += 8
            Break
        }
    }
}
StringLen, len, num
If (len != 4)
{
    MsgBox, 인증번호 인식 실패
    Return
}
ControlSetText, ThunderRT6TextBox3, %학번%, 광운대학교 학부 수강신청 시스템
ControlSetText, ThunderRT6TextBox2, %비밀번호%, 광운대학교 학부 수강신청 시스템
ControlSetText, ThunderRT6TextBox1, %num%, 광운대학교 학부 수강신청 시스템
Click, 325, 260     ; 로그인 버튼 클릭
Return


q::입력(aa)
w::입력(ba)
e::입력(ca)
r::입력(da)
t::입력(ea)
y::입력(fa)
u::입력(ga)
i::입력(ha)
o::입력(ia)
a::입력(ab)
s::입력(bb)
d::입력(cb)
f::입력(db)
g::입력(eb)
h::입력(fb)
j::입력(gb)
k::입력(hb)
l::입력(ib)
z::입력(ac)
x::입력(bc)
c::입력(cc)
v::입력(dc)
b::입력(ec)
n::입력(fc)
m::입력(gc)
,::입력(hc)
.::입력(ic)


Delete::삭제()
F1::수강신청()
F4::수강삭제()


; 이 이후로 항상 핫키 작동
#IfWinExist


Scrolllock::
Suspend
Send, {Scrolllock}
Return


Esc::
; 창종료 시
GuiClose:
Suspend, Permit             ; 핫키 비활성화 상태에서도 작동
SetTimer, Timer, Delete     ; 타이머 제거
Suspend, On                 ; 핫키 해제
; 굳이 명시적으로 해제하는 이유는 아래 설정파일 쓰는 부분에서 느려져서 스크립트가 늦게 꺼지는 경우가 있어서...
Gui, Submit
Gui, msg:Cancel
; 설정 파일 쓰기
IniWrite, %학번%, %scriptName%.ini, 광운대 수강신청 매크로, id
IniWrite, %비밀번호%, %scriptName%.ini, 광운대 수강신청 매크로, pw
IniWrite, %aa%, %scriptName%.ini, 광운대 수강신청 매크로, aa
IniWrite, %ba%, %scriptName%.ini, 광운대 수강신청 매크로, ba
IniWrite, %ca%, %scriptName%.ini, 광운대 수강신청 매크로, ca
IniWrite, %da%, %scriptName%.ini, 광운대 수강신청 매크로, da
IniWrite, %ea%, %scriptName%.ini, 광운대 수강신청 매크로, ea
IniWrite, %fa%, %scriptName%.ini, 광운대 수강신청 매크로, fa
IniWrite, %ga%, %scriptName%.ini, 광운대 수강신청 매크로, ga
IniWrite, %ha%, %scriptName%.ini, 광운대 수강신청 매크로, ha
IniWrite, %ia%, %scriptName%.ini, 광운대 수강신청 매크로, ia
IniWrite, %ab%, %scriptName%.ini, 광운대 수강신청 매크로, ab
IniWrite, %bb%, %scriptName%.ini, 광운대 수강신청 매크로, bb
IniWrite, %cb%, %scriptName%.ini, 광운대 수강신청 매크로, cb
IniWrite, %db%, %scriptName%.ini, 광운대 수강신청 매크로, db
IniWrite, %eb%, %scriptName%.ini, 광운대 수강신청 매크로, eb
IniWrite, %fb%, %scriptName%.ini, 광운대 수강신청 매크로, fb
IniWrite, %gb%, %scriptName%.ini, 광운대 수강신청 매크로, gb
IniWrite, %hb%, %scriptName%.ini, 광운대 수강신청 매크로, hb
IniWrite, %ib%, %scriptName%.ini, 광운대 수강신청 매크로, ib
IniWrite, %ac%, %scriptName%.ini, 광운대 수강신청 매크로, ac
IniWrite, %bc%, %scriptName%.ini, 광운대 수강신청 매크로, bc
IniWrite, %cc%, %scriptName%.ini, 광운대 수강신청 매크로, cc
IniWrite, %dc%, %scriptName%.ini, 광운대 수강신청 매크로, dc
IniWrite, %ec%, %scriptName%.ini, 광운대 수강신청 매크로, ec
IniWrite, %fc%, %scriptName%.ini, 광운대 수강신청 매크로, fc
IniWrite, %gc%, %scriptName%.ini, 광운대 수강신청 매크로, gc
IniWrite, %hc%, %scriptName%.ini, 광운대 수강신청 매크로, hc
IniWrite, %ic%, %scriptName%.ini, 광운대 수강신청 매크로, ic
; 임시 폴더 삭제
FileRemoveDir, %A_Temp%\%scriptName%, 1
SetScrollLockState, Off
ExitApp


; 클립보드의 내용이 바뀌면
; OnClipboardChange:
; clipboard := 숫자만(clipboard)
; Return


; 함수 두는 곳
; IME 상태 알아내는 함수. 영어면 0을 반환
IME_CHECK(winTitle)
{
    WinGet, hWnd, ID, %winTitle%
    defaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint, hWnd, Uint)
    detectSave := A_DetectHiddenWindows
    DetectHiddenWindows, ON
    SendMessage, 0x283, 0x005, "", , ahk_id %defaultIMEWnd%
    If (detectSave != A_DetectHiddenWindows)
        DetectHiddenWindows, %detectSave%
    Return ErrorLevel
}

; 갑자기 학정번호에 알파벳이 추가됐네...
숫자만(str)
{
    StringUpper, str, str
    StringLen, len, str
    num := ""
    Loop, %len%
    {
        StringMid, temp, str, %A_Index%, 1
        If (Asc(temp) >= 48 && Asc(temp) <= 57) || (Asc(temp) >= 65 && Asc(temp) <= 90)     ; 0~9, A~Z
            num .= temp
    }
    Return num
}

입력(str)
{
    If (str == "")
        Return
    num := 숫자만(str)
    삭제()
    If (IME_CHECK("A") != 0)    ; IME가 한글이면 영어로 변경
        Send, {vk15sc138}
    Send, {Home}%num%
    수강신청()
    ; 여기에서 수강신청 버튼을 눌러주지만 서버가 버벅일 경우 씹힐 수 있음. 주의!
}

삭제()
{
    WinActivate, 수강신청
    ; Click, 269, 293
    ControlFocus, MSMaskWndClass1, 수강신청
    Send, {Home}{Delete 11}
}

수강신청()
{
    WinActivate, 수강신청
    ; Click, 612, 524
    ControlGetPos, xx, yy, ww, hh, ThunderRT6CommandButton19, 수강신청  ; 수강신청 버튼 찾기
    xx += ww / 2
    yy += hh / 2
    Click, %xx%, %yy%
}

수강삭제()
{
    WinActivate, 수강신청
    ControlGetPos, xx, yy, ww, hh, ThunderRT6CommandButton20, 수강신청  ; 수강삭제 버튼 찾기
    xx += ww / 2
    yy += hh / 2
    Click, %xx%, %yy%
}


; 테스트용
F12::
Suspend, Permit
WinActivate, 수강신청
WinGet, test1, ControlList, 수강신청
Loop, Parse, test1, `n
{
    ControlGetText, test2, %A_LoopField%, 수강신청
    MsgBox, %test2%
}
Return
