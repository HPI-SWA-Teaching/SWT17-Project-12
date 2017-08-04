accessing
initializeCache
	"Loads all images when starting the Tutorial"

	self initializeWhiteMouseImages;
		initializeBlackMouseImages;
		initiializeGreyMouseImages.
	
	self imageWall: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName).
	self imageGoal: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName).
	self imageGateBlack: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_black.png') fullName).
	self imageGateWhite: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_white.png') fullName).
	self imageGateGrey: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_grey.png') fullName).
	self imagePlatform: (ImageReadWriter formFromFileNamed: (FileDirectory uri: 'platform.png') fullName)