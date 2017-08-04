accessing
initiializeGreyMouseImages
	"Loads all images of the grey mouse"

	self imagesMouseGrey: OrderedCollection new.
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_grey.png') fullName)