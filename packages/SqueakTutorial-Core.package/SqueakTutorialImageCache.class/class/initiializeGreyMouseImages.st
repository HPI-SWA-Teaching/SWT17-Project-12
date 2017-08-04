accessing
initiializeGreyMouseImages
	"Loads all images of the grey mouse"

	self imagesMouseGrey: OrderedCollection new.
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_up_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_down_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_left_grey.png') fullName).
	self imagesMouseGrey add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_right_grey.png') fullName)