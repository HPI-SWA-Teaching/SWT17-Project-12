initialization
updateButtonForward
	
	(self currentUnitID < SqueakTutorialLessonManager units size)
		ifTrue: [
			"enable button"
			self buttonForward
				color: (Color fromString: '00af89');
				target: self
		] ifFalse: [
			"disable button"
			self buttonForward
				color: Color gray;
				target: nil
		].