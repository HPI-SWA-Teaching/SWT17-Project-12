initialization
updateButtonForward
	
	(self currentUnitID < SqueakTutorialLessonManager units size)
		ifTrue: [
			"enable button"
			self buttonForward color: self buttonForward defaultColor.
			self buttonForward target: self]
		ifFalse: [
			"disable button"
			self buttonForward color: Color gray.
			self buttonForward target: nil].