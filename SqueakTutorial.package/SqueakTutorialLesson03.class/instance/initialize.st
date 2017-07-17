initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	"self obstaclePositions: (OrderedCollection newFrom: #((2@3) (2@1) (2@2)))."
	"self obstaclePositions: #(
		#(0 0) #(1 0) #(2 0)
		#(0 1) #(2 1)
		#(0 2) #(2 2)
		#(0 3) #(2 3)
		#(0 4) #(2 4)
		#(0 5) #(2 5)
		#(0 6) #(2 6) #(3 6) # (4 6) #(5 6) # (6 6) #(7 6) # (8 6)
		#(0 7) #(8 7)
		#(0 8) #(1 8) # (2 8) #(3 8) # (4 8) #(5 8) # (6 8) #(7 8) # (8 8)
	)."
	"self createObstaclePositionsFromPattern: '###-------','#-#-------','#-#-------','#-#-------','#-#-------','#-#-------','#-#######-','#-------#-','#########-','----------'."
	self createObstaclePositionsFromPattern: '###-------#-#-------#-#-------#-#-------#-#-------#-#-------#-#######-#-------#-#########-----------'.
	"self obstaclePositions: (#(0 1 2) asOrderedCollection)."
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 03 - More Loops'.
	self lessonDescription: 'This time you have to use so called Conditional Loops. Use the "whileTrue" loop and the boolean methods like "upsideFree" for taking the mouse to the goal. Boolean methods are methods, that return just True or False, when they get called.', Character cr asString , 'You can look up details about the new loop and more new boolean methods in the help menu below.' , Character cr asString , 'Use as few code lines as possible. Good luck!'.