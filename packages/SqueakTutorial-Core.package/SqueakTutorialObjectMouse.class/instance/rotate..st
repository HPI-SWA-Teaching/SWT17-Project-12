mouse controlling
rotate: newDirection
	"Rotate the mouse in a specific direction"
	
	| directionSelector cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	directionSelector := IdentityDictionary newFrom: {
		#up -> [self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#down -> [self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#left -> [self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#right -> [self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)]}.
	
	"TODO NOT WORKING"
	[(directionSelector at: self direction ifAbsent: []) value]