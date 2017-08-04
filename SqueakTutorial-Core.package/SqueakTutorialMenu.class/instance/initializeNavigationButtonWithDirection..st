initialization
initializeNavigationButtonWithDirection: aDirection

	| symbol button actionSel |
	
	(aDirection = 'left') ifTrue: [
		symbol := '<'.
		actionSel := #buttonBackClicked:.
	] ifFalse: [
		(aDirection = 'right') ifTrue: [
			symbol := '>'.
		actionSel := #buttonForwardClicked:.
		] ifFalse: [
			^false.
		]
	].
	
	button := SimpleButtonMorph new.
	button label: symbol.
	button submorphsDo: [:m| m color: (Color white)].
	button submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 120)].
	button actionSelector: actionSel.
	button arguments: (Array with: button).
	
	(aDirection = 'left') ifTrue: [
		self buttonBack: button.
		^true.
	].
	
	self buttonForward: button.
	^true.