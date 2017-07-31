as yet unclassified
initialize

	super initialize.
	
	self mouse: SqueakTutorialObjectMouse new.
	self mouse lesson: self.
	self platform: SqueakTutorialPlatform new.
	
	self gridX: 1.
	self gridY: 1.
	
	self createObstaclePositionsFromPattern: '###-------#-#-------#-#-------#-#-------#-#-------#-#-------#-#######-#-------#-#########-----------'.
	
	self lessonName: 'Lesson 0x - Object Identity'.
	self lessonDescription: 'Move the mouse to its destination by cloning it and putting the second mouse on the platform.'.