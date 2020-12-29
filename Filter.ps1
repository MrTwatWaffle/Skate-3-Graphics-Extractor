gc temp.log| sort | get-unique > temp.txt

Remove-Item temp.log

(get-content temp.txt) | foreach-object {$_ -replace "rx2", "!"} | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "psg", "!"} | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "http://skate3_web/skate3/content/XBL2/LOGO/", "@"} | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "http://downloads.skate.online.ea.com/skate3/content/PS3/LOGO/", "#"} | set-content temp.txt
(get-content temp.txt) | foreach-object { $_ -creplace "[^!0-9#@/]", "" } | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "@", "http://downloads.skate.online.ea.com/skate3/content/XBL2/LOGO/"} | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "#", "http://downloads.skate.online.ea.com/skate3/content/PS3/LOGO/"} | set-content temp.txt
(get-content temp.txt) | foreach-object {$_ -replace "!", ".png "} | set-content temp.txt

gc temp.txt| sort | get-unique > Graphics.txt

Invoke-Item Graphics.txt

Remove-Item temp.txt