accessing
initializeBlackMouseImages
	"Loads all images of the black mouse"

	self imagesMouseBlack: OrderedCollection new.
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_black.png') fullName)