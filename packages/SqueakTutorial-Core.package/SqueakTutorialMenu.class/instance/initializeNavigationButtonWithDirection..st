initialization
initializeNavigationButtonWithDirection: aDirection
	"Initializes a navigation button with the given direction (either 'left' or 'right') and returns true.
	Returns false, if the given string doesnt match a direction."

	| symbol button actionSel |
	
	(aDirection = 'left') ifTrue: [
		symbol := '<'.
		actionSel := #buttonBackClicked:.
	] ifFalse: [
		(aDirection = 'right') ifTrue: [
			symbol := '>'. actionSel := #buttonForwardClicked:
		] ifFalse: [^false]
	].
	
	button := SimpleButtonMorph new.
	button label: symbol;
		submorphsDo: [:m| m color: (Color white)];
		submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 120)];
		actionSelector: actionSel;
		arguments: (Array with: button).
	
	(aDirection = 'left') ifTrue: [ self buttonBack: button. ^true. ].
	
	self buttonForward: button.
	^true.