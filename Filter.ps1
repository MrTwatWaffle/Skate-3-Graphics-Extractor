gc temp.log| sort | get-unique > Graphics.txt

Remove-Item temp.log

(get-content Graphics.txt) | foreach-object {$_ -replace "rx2", "png "} | set-content Graphics.txt
(get-content Graphics.txt) | foreach-object {$_ -replace "http://skate3_web", " http://downloads.skate.online.ea.com"} | set-content Graphics.txt
(get-content Graphics.txt) | foreach-object { $_ -creplace "[^acdeghiklmnopstw0-9\s-:/.XBLOGO ]", "" } | set-content Graphics.txt
(get-content Graphics.txt) | foreach-object {$_ -replace "---------- ", "Script By MrTwatWaffle ---> https://youtube.com/MrTwatWaffle"} | set-content Graphics.txt
Invoke-Item Graphics.txt