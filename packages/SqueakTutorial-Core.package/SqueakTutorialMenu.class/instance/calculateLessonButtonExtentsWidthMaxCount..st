as yet unclassified
calculateLessonButtonExtentsWidthMaxCount: anInt
	"Calculates and answers the extents for a lesson button from a unit with given lesson count"

	| buttonWidth buttonHeight |
	
	buttonWidth := (((self extent x * 0.82) - (self extent x * 0.18))) / anInt.
	buttonHeight := (((self extent y * 0.75) - (self extent y * 0.05))).
	
	^(buttonWidth@buttonHeight).