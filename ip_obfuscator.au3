#NoTrayIcon
#pragma compile(Console, True)
If $CmdLine[0] = 0 Then
    ConsoleWrite("Error : Please give me an IP address!" & @CRLF)
    Exit 1
EndIf
Local $input_ip = $CmdLine[1]
Local $parts = StringSplit($input_ip, ".")
If $parts[0] <> 4 Then
    ConsoleWrite("Error : Not valid format!" & @CRLF)
    Exit 1
EndIf
Local $ip_1 = $parts[1]
Local $ip_2 = $parts[2]
Local $ip_3 = $parts[3]
Local $ip_4 = $parts[4]
Local $output = Dec(Hex($ip_1, 3) & Hex($ip_2, 2) & Hex($ip_3, 2) & Hex($ip_4, 2))
ConsoleWrite("Obfuscated : " & $output & @CRLF)
