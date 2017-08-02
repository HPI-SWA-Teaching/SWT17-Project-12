initialization
initializeOld

	"| button buttonCount startScreen lessonIndex |"
	
	super initialize.
	
	"buttonCount := 0.
	startScreen := TransformMorph new.
	startScreen color: Color white.
	
	self addMorph: startScreen
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
	
	lessonIndex := 1.
	SqueakTutorialLessonManager lessons do: [ :lesson |
		button := SimpleButtonMorph new.
		button target: self.
		button actionSelector: #startTutorial:withID:.
		button arguments: (Array with: lesson with: lessonIndex).
		lessonIndex := lessonIndex + 1.
		button label: lesson lessonName.
		button extent: 300@50.
		button position: 100@(100 + (buttonCount * 75)).
		buttonCount := buttonCount + 1.
		startScreen addMorph: button]."