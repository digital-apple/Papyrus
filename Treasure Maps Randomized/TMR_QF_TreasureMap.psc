;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TMR_QF_TreasureMap Extends Quest Hidden

;BEGIN ALIAS PROPERTY Container
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Container Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ContainerLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_ContainerLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TreasureMap
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TreasureMap Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Debug.Trace("Trace: " + Alias_TreasureMap.GetReference().GetBaseObject().GetName() + " Location: " + Alias_ContainerLocation.GetLocation().GetName())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
