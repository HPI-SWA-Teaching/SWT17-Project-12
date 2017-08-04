initialization
calculateUnitButtonExtentsWidthMaxCount: anInt

	| buttonWidth buttonHeight |
	
	buttonWidth := (((self extent x * 0.82) - (self extent x * 0.18))) / anInt.
	buttonHeight := (((self extent y * 0.75) - (self extent y * 0.05))).
	
	^(buttonWidth@buttonHeight).