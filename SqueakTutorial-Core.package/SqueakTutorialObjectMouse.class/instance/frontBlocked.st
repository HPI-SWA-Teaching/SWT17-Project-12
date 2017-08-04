as yet unclassified
frontBlocked

	(self direction = #up) ifTrue: [
		^(self upperBlockBlocked).
	] ifFalse: [
		(self direction = #down) ifTrue: [
			^(self lowerBlockBlocked).
		] ifFalse: [
			(self direction = #left) ifTrue: [
				^(self leftBlockBlocked).
			] ifFalse: [
				(self direction = #right) ifTrue: [
					^(self rightBlockBlocked).
				]
			] 
		]
	].