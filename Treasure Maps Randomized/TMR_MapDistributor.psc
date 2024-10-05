SCRIPTNAME TMR_MapDistributor Extends QUEST

QUEST[] Property TreasureMaps Auto

BOOL TryUpdating = True



EVENT OnInit()
;	Debug.MessageBox("TMR: Map Distributor Started!")
	RegisterForSingleUpdate(1.0)
ENDEVENT

EVENT OnUpdate()
	IF ( TryUpdating )
		TryUpdating = False

		INT Index = 0

		WHILE ( Index < TreasureMaps.Length )
			QUEST CurrentMap = TreasureMaps[Index]

			IF ( !CurrentMap.IsRunning() )
				CurrentMap.Reset()
				CurrentMap.Start()
				TryUpdating = True
			ENDIF

			Index += 1
		ENDWHILE

		RegisterForSingleUpdate(1.0)
	ELSE
;		Debug.MessageBox("TMR: Map Distributor Finished!")
		Self.Stop()
	ENDIF
ENDEVENT