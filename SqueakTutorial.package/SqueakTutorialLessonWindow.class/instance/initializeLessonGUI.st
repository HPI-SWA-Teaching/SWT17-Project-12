initialization
initializeLessonGUI

	| lessonDescriptionBackground |

	lessonDescriptionBackground := AlignmentMorph new.
	lessonDescriptionBackground color: Color white.
	lessonDescriptionBackground borderWidth: 0. " -> auf 0 gestellt - Jakob"
	lessonDescriptionBackground borderColor: Color red.
	lessonDescriptionBackground layoutPolicy: TableLayout new;
	  listDirection: #topToBottom;
	  wrapCentering: #center;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 2;
	  rubberBandCells: true.
	
	self lessonDescription: PluggableTextMorphPlus new.
	self lessonDescription color: Color black.
	lessonDescriptionBackground addMorph: self lessonDescription.
	
	self lessonGUI: TransformMorph new.
	self lessonGUI borderColor: Color black.
	self lessonGUI borderWidth: 1.
	self lessonGUI color: Color white.
	
	
			