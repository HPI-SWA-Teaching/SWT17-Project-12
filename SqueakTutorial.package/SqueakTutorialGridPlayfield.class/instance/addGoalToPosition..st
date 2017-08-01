as yet unclassified
addGoalToPosition: aPosition

	| cellExtent goal |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	goal := SqueakTutorialGoal new.
	
	goal morph: ImageMorph new.
	goal morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtent@cellExtent).
	goal gridX: aPosition x.
	goal gridY: aPosition y.
	
	(self grid cellAt: aPosition) addMorph: goal morph.
	goal morph setProperty: #Goal toValue: 1.
	
	^ goal