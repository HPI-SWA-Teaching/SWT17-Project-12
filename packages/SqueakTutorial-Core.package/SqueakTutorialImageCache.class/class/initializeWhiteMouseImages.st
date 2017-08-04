accessing
initializeWhiteMouseImages
	"Loads all images of the white mouse"

	self imagesMouseWhite: OrderedCollection new.
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_white.png') fullName)