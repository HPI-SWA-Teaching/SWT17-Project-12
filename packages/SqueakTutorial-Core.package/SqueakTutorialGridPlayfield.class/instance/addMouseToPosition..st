add / remove
addMouseToPosition: aPosition
	"Adds a mouse object to be displayed at a specific position in the grid on the playfield"

	| cellExtent mouse |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	mouse := SqueakTutorialObjectMouse new.
	mouse playfield: self;
		morph: ImageMorph new;
		direction: #down;
		gridX: aPosition x;
		gridY: aPosition y;
		color: 'grey'.
	mouse morph image: (SqueakTutorialImageCache imageMouse scaledToSize: cellExtent@cellExtent);
				setProperty: #Mouse toValue: 1.
	
	(self grid cellAt: aPosition) addMorph: mouse morph;
							visibleObject: mouse.
	
	^ mouse