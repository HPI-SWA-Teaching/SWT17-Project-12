accessing
isBlockedCell: mouseColor
	
	(self isGate) ifTrue: [
		"mouse color equals gate color?"
		^ ((mouseColor = self gateColor) not)].

	^ isBlocked