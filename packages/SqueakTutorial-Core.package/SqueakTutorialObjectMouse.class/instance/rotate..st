mouse controlling
rotate: newDirection
	"Rotate the mouse in a specific direction"
	
	| directionSelector cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	directionSelector := IdentityDictionary newFrom: {
		#up -> [((SqueakTutorialImageCache getMouseImageWithColor: self color withDirection: #up) scaledToSize: cellExtents@cellExtents)].
		#down -> [((SqueakTutorialImageCache getMouseImageWithColor: self color withDirection: #down) scaledToSize: cellExtents@cellExtents)].
		#left -> [((SqueakTutorialImageCache getMouseImageWithColor: self color withDirection: #left) scaledToSize: cellExtents@cellExtents)].
		#right -> [((SqueakTutorialImageCache getMouseImageWithColor: self color withDirection: #right) scaledToSize: cellExtents@cellExtents)]}.
	
	self morph image: ((directionSelector at: newDirection ifAbsent: []) value)