as yet unclassified
initialize

	super initialize.
	
	self mouse: SqueakTutorialObjectMouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	
	self createObstaclePositionsFromPattern: '###-------#-#-------#-#####---#--G--#---#####-#-------#G#-------#-###-----#---#-----#####-----------'.
	
	self gridX: 0.
	self gridY: 0.
	
	self lessonName: 'Lesson 0? - Object Attributes'.
	self lessonDescription: 'DESCRIPTION'.