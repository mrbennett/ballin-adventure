ACoolVar = MyVar
Hmmm_MyVar = Hmmmmmm
theArray = 

#!t::
theArray := ParseAndMakeVariableNameArray("window, xpos, ypos")
MsgBox, % theArray[0]
Return

#!r::
Reload
Return

ParseAndMakeVariableNameArray(headers) 
{
    array := Object()
    Loop, Parse, headers, CSV
    {
        MsgBox, % "thing " . A_Index . ": " . A_LoopField
        array[A_Index - 1] := A_LoopField
    }
    Return array
}