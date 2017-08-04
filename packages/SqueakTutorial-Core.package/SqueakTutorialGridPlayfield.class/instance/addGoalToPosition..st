add / remove
addGoalToPosition: aPosition
	"Adds a goal object to be displayed at a specific position in the grid on the playfield"

	| cellExtent goal |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	goal := SqueakTutorialGoal new.	
	goal morph: ImageMorph new;
		gridX: aPosition x;
		gridY: aPosition y.
	goal morph image: (SqueakTutorialImageCache imageGoal scaledToSize: cellExtent@cellExtent);
				setProperty: #Goal toValue: 1.
	
	(self grid cellAt: aPosition) addMorph: goal morph;
							visibleObject: goal.
	
	^ goal