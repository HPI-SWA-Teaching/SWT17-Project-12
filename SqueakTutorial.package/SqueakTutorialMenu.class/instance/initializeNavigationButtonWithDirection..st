initialization
initializeNavigationButtonWithDirection: aDirection

	| symbol button |
	
	(aDirection = 'left') ifTrue: [
		symbol := '<'
	] ifFalse: [
		(aDirection = 'right') ifTrue: [
			symbol := '>'
		] ifFalse: [
			^false.
		]
	].
	
	button := SimpleButtonMorph new.
	button label: symbol.
	button submorphsDo: [:m| m color: (Color white)].
	button submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 120)].
	
	(aDirection = 'left') ifTrue: [
		self buttonBack: button.
		^true.
	].
	
	self buttonForward: button.
	^true.