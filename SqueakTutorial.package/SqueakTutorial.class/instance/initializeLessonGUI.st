initialization
initializeLessonGUI

	self lessonDescriptionBackground: AlignmentMorph new.
	self lessonDescriptionBackground color: Color white.
	self lessonDescriptionBackground borderWidth: 0. " -> auf 0 gestellt - Jakob"
	self lessonDescriptionBackground borderColor: Color red.
	self lessonDescriptionBackground layoutPolicy: TableLayout new;
	  listDirection: #topToBottom;
	  wrapCentering: #center;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 2;
	  rubberBandCells: true.
	
	self lessonDescription: PluggableTextMorphPlus new.
	lessonDescriptionBackground addMorph: self lessonDescription.
	
	self lessonGUI: TransformMorph new.
	self lessonGUI borderColor: Color black.
	self lessonGUI borderWidth: 1.
	self lessonGUI color: Color white.
	
	
			