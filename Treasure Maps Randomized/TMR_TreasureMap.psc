SCRIPTNAME TMR_TreasureMap Extends REFERENCEALIAS

CONTAINER Property TreasureContainer Auto
OBJECTREFERENCE Property ContainerMarker Auto
ACTOR Property Player Auto



EVENT OnContainerChanged(OBJECTREFERENCE akNewContainer, OBJECTREFERENCE akOldContainer)
	IF (akNewContainer == Player)
		ContainerMarker.Enable()
		IF ( TreasureContainer )
			; Treasure Map VIII (Dragon Bridge) chest already exists in the world by default. Do not spawn another one.
			ContainerMarker.PlaceAtMe(TreasureContainer, 1, True)
		ENDIF
		
		Self.GetOwningQuest().Stop()
	ENDIF
ENDEVENT

EVENT OnRead()
	ContainerMarker.Enable()
	
	IF ( TreasureContainer )
		; Treasure Map VIII (Dragon Bridge) chest already exists in the world by default. Do not spawn another one.
		ContainerMarker.PlaceAtMe(TreasureContainer, 1, True)
	ENDIF
	
	Self.GetOwningQuest().Stop()
ENDEVENT