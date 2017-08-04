mouse controlling
rotate: newDirection
	"Rotate the mouse in a specific direction"
	
	| directionSelector cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	directionSelector := IdentityDictionary newFrom: {
		#up -> [((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#down -> [((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#left -> [((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#right -> [((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)]}.
	
	"TODO NOT WORKING"
	self morph image: ((directionSelector at: newDirection ifAbsent: []) value)