accessing
initiializeGreyMouseImages
	"Loads all images of the grey mouse"

	self imageMouseGreyUp: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_grey.png') fullName).
	self imageMouseGreyDown: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName).
	self imageMouseGreyLeft: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_grey.png') fullName).
	self imageMouseGreyRight: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_grey.png') fullName)