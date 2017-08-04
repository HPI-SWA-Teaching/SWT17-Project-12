accessing
initializeBlackMouseImages
	"Loads all images of the black mouse"

	self imagesMouseBlack: OrderedCollection new.
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_up_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_down_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_left_black.png') fullName).
	self imagesMouseBlack add: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/mouse_right_black.png') fullName)