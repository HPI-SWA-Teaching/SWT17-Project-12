accessing
initializeCache
	"Loads all images when starting the Tutorial"

	self initializeWhiteMouseImages;
		initializeBlackMouseImages;
		initiializeGreyMouseImages.
	
	self imageWall: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/wall.png') fullName).
	self imageGoal: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/goal.png') fullName).
	self imageGateBlack: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/gate_black.png') fullName).
	self imageGateWhite: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/gate_white.png') fullName).
	self imageGateGrey: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/gate_grey.png') fullName).
	self imagePlatform: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/platform.png') fullName)