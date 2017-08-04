initialization
updateButtonForward: aButton
	
	(self currentUnitID < SqueakTutorialLessonManager units size)
		ifTrue: [
			"enable button"
			aButton color: aButton defaultColor.
			aButton target: self]
		ifFalse: [
			"disable button"
			aButton color: Color gray.
			aButton target: nil].