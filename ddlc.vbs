Option Explicit

Dim objFSO, strCurrentDirectory, strDDLCPath

Set objFSO = CreateObject("Scripting.FileSystemObject")
strCurrentDirectory = objFSO.GetAbsolutePathName(".")

strDDLCPath = strCurrentDirectory & "\DDLC.exe"

If objFSO.FileExists(strDDLCPath) Then
    WScript.Echo "Launching Doki Doki Literature Club..."
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")
    objShell.Run strDDLCPath
    Set objShell = Nothing
Else
    MsgBox "A fatal error occurred within the Doki Doki Literature Club Launcher, and the program needs to shut down..." & vbCrLf & _
        "This error can appear for the following reasons:" & vbCrLf & _
        "1. Doki Doki Literature Club cannot be found" & vbCrLf & _
        "2. Another program might be accessing DDLC.exe" & vbCrLf & _
        "3. The Doki Doki Literature Club Launcher scripts were tampered or messed with" & vbCrLf & _
        " " & vbCrLf & _
        "To ensure that the scripts can find DDLC.exe, make sure they are in the exact same folder as DDLC.exe. This will help the scripts detect the game's executable. Also, make sure that no other programs are accessing the game's executable (like Steam loading the game, the game's EXE being open in Notepad, or the game simply being open), as this will lead to issues. Also, ensure that the DDLC Launcher script code wasn't tampered with. You can verify this by going to the launcher's Github page and checking the MD5 hash, and then using a tool like MD5Checker to verify the integrity of the script's ZIP file. This will ensure the script functions as intended, and that your computer is safe from viruses.", vbCritical, "Doki Doki Literature Club Launcher - Fatal Error 0x0000D0K1D0K1"
Set objShell = CreateObject("WScript.Shell")
objShell.Run "cmd /c start https://github.com/macecailiscool/DDLC-Launcher"
End If

Set objFSO = Nothing
