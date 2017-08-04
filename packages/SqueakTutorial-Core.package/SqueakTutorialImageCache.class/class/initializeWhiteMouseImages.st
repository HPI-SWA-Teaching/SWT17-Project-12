accessing
initializeWhiteMouseImages
	"Loads all images of the white mouse"

	self imageMouseWhiteUp: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_white.png') fullName).
	self imageMouseWhiteDown: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_white.png') fullName).
	self imageMouseWhiteLeft: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_white.png') fullName).
	self imageMouseWhiteRight: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_white.png') fullName)