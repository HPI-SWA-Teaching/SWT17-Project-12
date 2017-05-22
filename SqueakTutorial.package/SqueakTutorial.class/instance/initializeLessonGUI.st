initialization
initializeLessonGUI

	self lessonDescriptionBackground: AlignmentMorph new.
	"lessonDescriptionBackground extent: 390@150.
	lessonDescriptionBackground position: 405@5."
	self lessonDescriptionBackground color: Color white.
	self lessonDescriptionBackground borderWidth: 3.
	self lessonDescriptionBackground borderColor: Color red.
	self lessonDescriptionBackground layoutPolicy: TableLayout new;
	  listDirection: #leftToRight;
	  wrapCentering: #center;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 2;
	  rubberBandCells: true.
	"self addMorph: self lessonDescriptionBackground
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@0)
			offsets: (0@0 corner: 0@200))."
	"self addMorph: lessonDescriptionBackground."
	
	self lessonDescription: TextMorph new.
	self lessonDescription contents: 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!' , Character cr asString , 'LESSON_DESCRIPTION!'.
	"lessonDescriptionBackground addMorph: self lessonDescription."
	
	self lessonGUI: TransformMorph new.
	self lessonGUI borderColor: Color black.
	self lessonGUI borderWidth: 1.
	self lessonGUI color: Color white.
	"self lessonGUI extent: 390@590.
	self lessonGUI position: 5@5."
	"self addMorph: self lessonGUI
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@0))."
	"self addMorph: self lessonGUI."
	
	
			