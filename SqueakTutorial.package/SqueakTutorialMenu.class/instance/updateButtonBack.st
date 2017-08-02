initialization
updateButtonBack
	
	(self currentUnitID > 1)
		ifTrue: [
			"enable button"
			self buttonBack color: self buttonBack defaultColor.
			self buttonBack target: self]
		ifFalse: [
			"disable button"
			self buttonBack color: Color gray.
			self buttonBack target: nil].