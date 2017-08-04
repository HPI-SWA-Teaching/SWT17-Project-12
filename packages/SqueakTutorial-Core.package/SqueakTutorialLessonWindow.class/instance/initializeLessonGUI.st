initialization
initializeLessonGUI
	"Initializes the lesson-description and the graphical part"

	| lessonDescriptionBackground |

	lessonDescriptionBackground := AlignmentMorph new.
	lessonDescriptionBackground color: Color white;
		borderWidth: 0;
		borderColor: Color red;
		layoutPolicy: TableLayout new;
	  	listDirection: #topToBottom;
	  	wrapCentering: #center;
	  	hResizing: #spaceFill;
	  	vResizing: #spaceFill;
	  	layoutInset: 2;
	  	rubberBandCells: true.
	
	self lessonDescription: PluggableTextMorphPlus new.
	self lessonDescription color: Color black.
	lessonDescriptionBackground addMorph: self lessonDescription.
	
	self lessonDisplay: TransformMorph new.
	self lessonDisplay
		borderColor: Color black;
		borderWidth: 1;
		color: Color white.
	
	
			