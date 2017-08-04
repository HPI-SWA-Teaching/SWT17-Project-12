initialization
addButtonForLesson: aLesson withLessonNumber: aNumber withExtent: anExtent atPosition: aPosition
	"Adds a button for a given lesson with a given position and extent to the lessonScreen"
	
	| lessonButton|

	lessonButton := SimpleButtonMorph new.
	
	lessonButton
		recolor: (Color fromString: '#3366cc');
		label: aLesson lessonName;
		submorphsDo: [:m| m color: (Color white)];
		submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 20)];
		extent: anExtent;
		position: aPosition;
		target: self;
		actionSelector: #startTutorial:withID:;
		arguments: (Array with: aLesson with: aNumber);
		borderColor: Color white;
		borderWidth: 2.
	
	self lessonScreen addMorph: lessonButton.