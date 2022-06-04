setMode -bs
setCable -port auto
Identify -inferir
identifyMPM
assignFile -p 5 -file "HW_Pipeline.bit"
Program -p 5
quit
