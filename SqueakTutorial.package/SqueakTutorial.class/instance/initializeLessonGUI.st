initialization
initializeLessonGUI

	| lessonDescriptionBackground |
	lessonDescriptionBackground := AlignmentMorph new.
	lessonDescriptionBackground extent: 390@150.
	lessonDescriptionBackground position: 5@5.
	lessonDescriptionBackground color: Color white.
	lessonDescriptionBackground borderWidth: 3.
	lessonDescriptionBackground borderColor: Color red.
	lessonDescriptionBackground layoutPolicy: TableLayout new;
	  listDirection: #leftToRight;
	  wrapCentering: #center;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 2;
	  rubberBandCells: true.
	self addMorph: lessonDescriptionBackground.
	
	self lessonDescription: TextMorph new.
	self lessonDescription contents: 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!'.
	lessonDescriptionBackground addMorph: self lessonDescription.
	
	self lessonGUI: TransformMorph new.
	self lessonGUI borderColor: Color black.
	self lessonGUI borderWidth: 1.
	self lessonGUI color: Color white.
	self lessonGUI extent: 390@440.
	self lessonGUI position: 5@155.
	self addMorph: self lessonGUI

	