initialization
initialize

	super initialize.
	
	"todo eventuell noch vereinfachen!!!"
	self createObstaclePositionsFromPattern: '###-------#-#-------#-#-------#-#-------#-#-------#-#-------#-#######-#-------#-#########-----------'.
	
	self lessonName: 'Lesson 04 - More Loops'.
	self lessonDescription: 'This time you have to use so called Conditional Loops. Use the "whileTrue" loop and the boolean methods like "upsideFree" for taking the mouse to the goal. Boolean methods are methods, that return just True or False, when they get called.', Character cr asString , 'You can look up details about the new loop and more new boolean methods in the help menu below.' , Character cr asString , 'Use as few code lines as possible. Good luck!'.