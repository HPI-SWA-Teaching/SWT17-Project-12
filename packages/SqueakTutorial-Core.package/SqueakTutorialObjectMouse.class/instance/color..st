accessing
color: anColor
	"Set the color of the mouse. Color has to be one of 'grey', 'black' or 'white'"
	
	| cellExtents |
	
	((anColor = 'white') |  (anColor = 'grey')  | (anColor = 'black') ) ifTrue: [
		cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
		color := anColor.
		self morph image: ((SqueakTutorialImageCache getMouseImageWithColor: anColor withDirection: self direction) scaledToSize: cellExtents@cellExtents).
	].