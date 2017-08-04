accessing
initializeBlackMouseImages
	"Loads all images of the black mouse"

	self imageMouseBlackUp: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_black.png') fullName).
	self imageMouseBlackDown: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_black.png') fullName).
	self imageMouseBlackLeft: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_black.png') fullName).
	self imageMouseBlackRight: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_black.png') fullName)