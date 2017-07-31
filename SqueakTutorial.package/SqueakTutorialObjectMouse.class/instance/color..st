accessing
color: anColor
	"Color has to be one of 'grey', 'black' or 'white'"
	
	| cellExtents |
	
	((anColor = 'white') |  (anColor = 'grey')  | (anColor = 'black') ) ifTrue: [
		cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
		color := anColor.
		self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_', self direction, '_', anColor,'.png') fullName) scaledToSize: cellExtents@cellExtents).
	].