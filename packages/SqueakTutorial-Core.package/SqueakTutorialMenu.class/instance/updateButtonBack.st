initialization
updateButtonBack
	
	(self currentUnitID > 1)
		ifTrue: [
			"enable button"
			self buttonBack
				color: (Color fromString: '00af89');
				target: self
		] ifFalse: [
			"disable button"
			self buttonBack
				color: Color gray;
				target: nil
		].