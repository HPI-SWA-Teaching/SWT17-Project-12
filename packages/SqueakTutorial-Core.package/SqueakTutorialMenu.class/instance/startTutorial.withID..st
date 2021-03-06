initialization
startTutorial: aLesson withID: anInt
	"Starts a given lesson with a given ID"

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial
		openInWorld;
		fullScreen;
		loadLesson: aLesson.
	
	SqueakTutorialLessonManager
		currentUnit: (SqueakTutorialLessonManager units at: self currentUnitID);
		lastLessonIndex: anInt.
	
	self delete.