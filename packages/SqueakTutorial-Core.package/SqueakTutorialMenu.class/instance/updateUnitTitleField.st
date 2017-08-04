initialization
updateUnitTitleField
	"Updates the unit title field"
	
	self unitTitleField contents: (SqueakTutorialLessonManager units at: self currentUnitID)