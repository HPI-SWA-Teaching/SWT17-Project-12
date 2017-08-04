initialization
buttonForwardClicked: aButton
	"Functionalitys of the forward button"

	self
		currentUnitID: self currentUnitID + 1;
		navigationButtonClicked.