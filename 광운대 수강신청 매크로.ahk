#NoEnv
#Persistent             ; ���� ����(ExitApp�� ����)
#SingleInstance force   ; �ߺ������ �ٽ� ����
#NoTrayIcon

SetBatchLines, -1       ; ��ũ��Ʈ ����ӵ� �ִ�
SetMouseDelay, 0
SetKeyDelay, 0
SetControlDelay, 0

SplitPath, A_ScriptFullPath, , , , scriptName   ; Ȯ���ڸ� ������ ��ũ��Ʈ ���ϸ� ����

; �ӽ� ���� ����
FileCreateDir, %A_Temp%\%scriptName%
; �̹�����ġ ���� ����
FileInstall, img\1.bmp, %A_Temp%\%scriptName%\1.bmp, 1
FileInstall, img\2.bmp, %A_Temp%\%scriptName%\2.bmp, 1
FileInstall, img\3.bmp, %A_Temp%\%scriptName%\3.bmp, 1
FileInstall, img\4.bmp, %A_Temp%\%scriptName%\4.bmp, 1
FileInstall, img\5.bmp, %A_Temp%\%scriptName%\5.bmp, 1
FileInstall, img\6.bmp, %A_Temp%\%scriptName%\6.bmp, 1
FileInstall, img\7.bmp, %A_Temp%\%scriptName%\7.bmp, 1
FileInstall, img\8.bmp, %A_Temp%\%scriptName%\8.bmp, 1

; ���� ���� �б�
IniRead, �й�, %scriptName%.ini, ����� ������û ��ũ��, id, %A_Space%
IniRead, ��й�ȣ, %scriptName%.ini, ����� ������û ��ũ��, pw, %A_Space%
IniRead, aa, %scriptName%.ini, ����� ������û ��ũ��, aa, %A_Space%
IniRead, ba, %scriptName%.ini, ����� ������û ��ũ��, ba, %A_Space%
IniRead, ca, %scriptName%.ini, ����� ������û ��ũ��, ca, %A_Space%
IniRead, da, %scriptName%.ini, ����� ������û ��ũ��, da, %A_Space%
IniRead, ea, %scriptName%.ini, ����� ������û ��ũ��, ea, %A_Space%
IniRead, fa, %scriptName%.ini, ����� ������û ��ũ��, fa, %A_Space%
IniRead, ga, %scriptName%.ini, ����� ������û ��ũ��, ga, %A_Space%
IniRead, ha, %scriptName%.ini, ����� ������û ��ũ��, ha, %A_Space%
IniRead, ia, %scriptName%.ini, ����� ������û ��ũ��, ia, %A_Space%
IniRead, ab, %scriptName%.ini, ����� ������û ��ũ��, ab, %A_Space%
IniRead, bb, %scriptName%.ini, ����� ������û ��ũ��, bb, %A_Space%
IniRead, cb, %scriptName%.ini, ����� ������û ��ũ��, cb, %A_Space%
IniRead, db, %scriptName%.ini, ����� ������û ��ũ��, db, %A_Space%
IniRead, eb, %scriptName%.ini, ����� ������û ��ũ��, eb, %A_Space%
IniRead, fb, %scriptName%.ini, ����� ������û ��ũ��, fb, %A_Space%
IniRead, gb, %scriptName%.ini, ����� ������û ��ũ��, gb, %A_Space%
IniRead, hb, %scriptName%.ini, ����� ������û ��ũ��, hb, %A_Space%
IniRead, ib, %scriptName%.ini, ����� ������û ��ũ��, ib, %A_Space%
IniRead, ac, %scriptName%.ini, ����� ������û ��ũ��, ac, %A_Space%
IniRead, bc, %scriptName%.ini, ����� ������û ��ũ��, bc, %A_Space%
IniRead, cc, %scriptName%.ini, ����� ������û ��ũ��, cc, %A_Space%
IniRead, dc, %scriptName%.ini, ����� ������û ��ũ��, dc, %A_Space%
IniRead, ec, %scriptName%.ini, ����� ������û ��ũ��, ec, %A_Space%
IniRead, fc, %scriptName%.ini, ����� ������û ��ũ��, fc, %A_Space%
IniRead, gc, %scriptName%.ini, ����� ������û ��ũ��, gc, %A_Space%
IniRead, hc, %scriptName%.ini, ����� ������û ��ũ��, hc, %A_Space%
IniRead, ic, %scriptName%.ini, ����� ������û ��ũ��, ic, %A_Space%

; ����â ����
Gui, Add, Text, w35, �й�:
Gui, Add, Edit, x+0 w67 r1 Limit10 v�й�, %�й�%
Gui, Add, Text, x+30 w60, ��й�ȣ:
Gui, Add, Edit, x+0 w130 r1 Password v��й�ȣ, %��й�ȣ%

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

Gui, Add, Text, xm0 y+10, Delete: ������ȣ�� ����
Gui, Add, Text, Section x+50 yp+0, Esc: ���α׷� ����
Gui, Add, Text, xm0 y+5, F1: ������û ��ư
Gui, Add, Text, x+20 yp+0, F4: �������� ��ư
Gui, Add, Text, x+20 yp+0, F5: �α��� ���� �Է�
Gui, Add, Text, xm0 y+5, ScrollLock on: ��ũ�� �۵�
Gui, Add, Text, xs+0 yp+0, ScrollLock off: ��ũ�� ����

Gui, Show, Center, ����� ������û ��ũ��

; �޽���â ����
Gui, msg:Add, Edit, x0 y0 w300 h200 Multi v�޽��� HwndhEdit
Gui, msg:+MinSize300x +Resize +ToolWindow   ; �ּ�ȭ ���� ���ֱ�, ũ������ ����

SetScrollLockState, On

SetTimer, Timer, 100
Return


Input:
GuiControl, -g, %A_GuiControl%
GuiControlGet, str, , %A_GuiControl%
num := ���ڸ�(str)
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
; �����Ϲ��� ������ȣ �ڵ� �Է�
IfWinExist, ���� ������û(�����Ϲ���)
{
    ControlGetText, num, Static1, ���� ������û(�����Ϲ���)
    num := ���ڸ�(num)
    ControlSetText, Edit1, %num%, ���� ������û(�����Ϲ���)
    ControlClick, Button1, ���� ������û(�����Ϲ���)
}
; �޽����ڽ� â�� ������û â ������ �̵�
WinGetPos, xx, yy, ww, , ahk_exe MDmain.exe
xx += ww
If (xx != "" && yy != "")   ; â ������ �� �����ߴ� �� ����
{
    Gui msg:+LastFound
    WinMove, xx, yy
}
; �޽����ڽ� ����ä��
IfWinExist, ������û ahk_class #32770
{
    WinGetText, msg, ������û, Ȯ��
    msg := RegExReplace(msg, "Ȯ��|���|\R", "")    ; �������� �ؽ�Ʈ �ڸ���
    If (msg != "")
    {
        ControlClick, Button1, ������û, Ȯ��       ; Ȯ�� ��ư Ŭ��
        Gui, msg:Submit, NoHide
        GuiControl, msg:, �޽���, %�޽���%%msg%`n------------------------------------------------`n
        Gui, msg:Show, , �޽����ڽ�
        ; DllCall("SendMessage", UInt, hEdit, UInt, 0xB6, UInt, 0, UInt, DllCall("SendMessage", UInt, hEdit, UInt, 0xBA)) ; ��ũ�� �� �Ʒ���
        PostMessage, 0x115, 7, 0, , ahk_id %hEdit%  ; ��ũ�� �� �Ʒ���
        WinActivate, ������û
    }
}
Return


; �޽���â ũ�� ���� ��
msgGuiSize:
GuiControl, msg:Move, �޽���, w%A_GuiWidth% h%A_GuiHeight%  ; âũ�� ���� ����
Return


; �� ���ķ� ������û â�� ������ ���� ��Ű �۵�
#IfWinExist ������û ahk_exe MDmain.exe


F5::
Gui, Submit, NoHide
WinActivate, ������б� �к� ������û �ý���
num := ""
xx := 125
; ������ȣ �ν�
Loop, 4
{
    Loop, 8
    {
        ImageSearch, , , xx, 230, xx + 15, 260, %A_Temp%\%scriptName%\%A_Index%.bmp
        If ErrorLevel = 2
        {
            MsgBox, �̹�����ġ ����
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
    MsgBox, ������ȣ �ν� ����
    Return
}
ControlSetText, ThunderRT6TextBox3, %�й�%, ������б� �к� ������û �ý���
ControlSetText, ThunderRT6TextBox2, %��й�ȣ%, ������б� �к� ������û �ý���
ControlSetText, ThunderRT6TextBox1, %num%, ������б� �к� ������û �ý���
Click, 325, 260     ; �α��� ��ư Ŭ��
Return


q::�Է�(aa)
w::�Է�(ba)
e::�Է�(ca)
r::�Է�(da)
t::�Է�(ea)
y::�Է�(fa)
u::�Է�(ga)
i::�Է�(ha)
o::�Է�(ia)
a::�Է�(ab)
s::�Է�(bb)
d::�Է�(cb)
f::�Է�(db)
g::�Է�(eb)
h::�Է�(fb)
j::�Է�(gb)
k::�Է�(hb)
l::�Է�(ib)
z::�Է�(ac)
x::�Է�(bc)
c::�Է�(cc)
v::�Է�(dc)
b::�Է�(ec)
n::�Է�(fc)
m::�Է�(gc)
,::�Է�(hc)
.::�Է�(ic)


Delete::����()
F1::������û()
F4::��������()


; �� ���ķ� �׻� ��Ű �۵�
#IfWinExist


Scrolllock::
Suspend
Send, {Scrolllock}
Return


Esc::
; â���� ��
GuiClose:
Suspend, Permit             ; ��Ű ��Ȱ��ȭ ���¿����� �۵�
SetTimer, Timer, Delete     ; Ÿ�̸� ����
Suspend, On                 ; ��Ű ����
; ���� ��������� �����ϴ� ������ �Ʒ� �������� ���� �κп��� �������� ��ũ��Ʈ�� �ʰ� ������ ��찡 �־...
Gui, Submit
Gui, msg:Cancel
; ���� ���� ����
IniWrite, %�й�%, %scriptName%.ini, ����� ������û ��ũ��, id
IniWrite, %��й�ȣ%, %scriptName%.ini, ����� ������û ��ũ��, pw
IniWrite, %aa%, %scriptName%.ini, ����� ������û ��ũ��, aa
IniWrite, %ba%, %scriptName%.ini, ����� ������û ��ũ��, ba
IniWrite, %ca%, %scriptName%.ini, ����� ������û ��ũ��, ca
IniWrite, %da%, %scriptName%.ini, ����� ������û ��ũ��, da
IniWrite, %ea%, %scriptName%.ini, ����� ������û ��ũ��, ea
IniWrite, %fa%, %scriptName%.ini, ����� ������û ��ũ��, fa
IniWrite, %ga%, %scriptName%.ini, ����� ������û ��ũ��, ga
IniWrite, %ha%, %scriptName%.ini, ����� ������û ��ũ��, ha
IniWrite, %ia%, %scriptName%.ini, ����� ������û ��ũ��, ia
IniWrite, %ab%, %scriptName%.ini, ����� ������û ��ũ��, ab
IniWrite, %bb%, %scriptName%.ini, ����� ������û ��ũ��, bb
IniWrite, %cb%, %scriptName%.ini, ����� ������û ��ũ��, cb
IniWrite, %db%, %scriptName%.ini, ����� ������û ��ũ��, db
IniWrite, %eb%, %scriptName%.ini, ����� ������û ��ũ��, eb
IniWrite, %fb%, %scriptName%.ini, ����� ������û ��ũ��, fb
IniWrite, %gb%, %scriptName%.ini, ����� ������û ��ũ��, gb
IniWrite, %hb%, %scriptName%.ini, ����� ������û ��ũ��, hb
IniWrite, %ib%, %scriptName%.ini, ����� ������û ��ũ��, ib
IniWrite, %ac%, %scriptName%.ini, ����� ������û ��ũ��, ac
IniWrite, %bc%, %scriptName%.ini, ����� ������û ��ũ��, bc
IniWrite, %cc%, %scriptName%.ini, ����� ������û ��ũ��, cc
IniWrite, %dc%, %scriptName%.ini, ����� ������û ��ũ��, dc
IniWrite, %ec%, %scriptName%.ini, ����� ������û ��ũ��, ec
IniWrite, %fc%, %scriptName%.ini, ����� ������û ��ũ��, fc
IniWrite, %gc%, %scriptName%.ini, ����� ������û ��ũ��, gc
IniWrite, %hc%, %scriptName%.ini, ����� ������û ��ũ��, hc
IniWrite, %ic%, %scriptName%.ini, ����� ������û ��ũ��, ic
; �ӽ� ���� ����
FileRemoveDir, %A_Temp%\%scriptName%, 1
SetScrollLockState, Off
ExitApp


; Ŭ�������� ������ �ٲ��
; OnClipboardChange:
; clipboard := ���ڸ�(clipboard)
; Return


; �Լ� �δ� ��
; IME ���� �˾Ƴ��� �Լ�. ����� 0�� ��ȯ
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

; ���ڱ� ������ȣ�� ���ĺ��� �߰��Ƴ�...
���ڸ�(str)
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

�Է�(str)
{
    If (str == "")
        Return
    num := ���ڸ�(str)
    ����()
    If (IME_CHECK("A") != 0)    ; IME�� �ѱ��̸� ����� ����
        Send, {vk15sc138}
    Send, {Home}%num%
    ������û()
    ; ���⿡�� ������û ��ư�� ���������� ������ ������ ��� ���� �� ����. ����!
}

����()
{
    WinActivate, ������û
    ; Click, 269, 293
    ControlFocus, MSMaskWndClass1, ������û
    Send, {Home}{Delete 11}
}

������û()
{
    WinActivate, ������û
    ; Click, 612, 524
    ControlGetPos, xx, yy, ww, hh, ThunderRT6CommandButton19, ������û  ; ������û ��ư ã��
    xx += ww / 2
    yy += hh / 2
    Click, %xx%, %yy%
}

��������()
{
    WinActivate, ������û
    ControlGetPos, xx, yy, ww, hh, ThunderRT6CommandButton20, ������û  ; �������� ��ư ã��
    xx += ww / 2
    yy += hh / 2
    Click, %xx%, %yy%
}


; �׽�Ʈ��
F12::
Suspend, Permit
WinActivate, ������û
WinGet, test1, ControlList, ������û
Loop, Parse, test1, `n
{
    ControlGetText, test2, %A_LoopField%, ������û
    MsgBox, %test2%
}
Return
