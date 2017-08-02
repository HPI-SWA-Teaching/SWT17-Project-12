initialization
buttonBackClicked: aButton

	self currentUnitID: self currentUnitID - 1.
	
	self showUnitButtons.
	
	self updateButtonBack.
	self updateButtonForward.