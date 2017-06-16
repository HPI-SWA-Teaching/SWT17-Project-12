initialization
loadLesson1

	"self grid: (SqueakTutorialGrid size: 10 onMorph: self lessonGUI).
	self lessonGUI addMorph: self grid.
	Transcript show: self lessonGUI extent x."
	
	"self mouseMorph: ImageMorph new.
	self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouseMorph extent: 5@5.
	self lessonGUI addMorph: self mouseMorph."
	
	"simpleLesson := SqueakTutorialLesson lessonName: 'Move the Mouse' lessonDescription: 'Task 1.1: Feed the mouse with the cheese.' , Character cr asString , 'Look up the messages for the mouse in the help menu below the morph field.' , Character cr asString , 'And type your instructions for the mouse in the code field below this window.' , Character cr asString , '(Example: mouse up: 10, to move the mouse 10 steps in the upper direction )' , Character cr asString , 'Use as few code lines as possible… And good luck!'."
	self loadLesson: SqueakTutorialLesson01_MouseMove new.