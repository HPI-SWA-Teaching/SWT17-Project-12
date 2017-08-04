initialization
updateButtonForward
	"Updates the Back button (enables or disables it)."
	
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