initialization
updateButtonBack
	
	(self currentUnitID > 1)
		ifTrue: [
			"enable button"
			self buttonBack color: (Color fromString: '00af89').
			self buttonBack target: self]
		ifFalse: [
			"disable button"
			self buttonBack color: Color gray.
			self buttonBack target: nil].