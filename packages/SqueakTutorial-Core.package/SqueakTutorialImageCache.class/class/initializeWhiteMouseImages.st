accessing
initializeWhiteMouseImages
	"Loads all images of the white mouse"

	self imagesMouseWhite: OrderedCollection new.
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_up_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_down_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_left_white.png') fullName).
	self imagesMouseWhite add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_right_white.png') fullName)