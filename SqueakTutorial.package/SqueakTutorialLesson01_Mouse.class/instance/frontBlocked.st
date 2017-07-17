as yet unclassified
frontBlocked

	(self direction = #up) ifTrue: [
		^(self upsideBlocked).
	] ifFalse: [
		(self direction = #down) ifTrue: [
			^(self downsideBlocked).
		] ifFalse: [
			(self direction = #left) ifTrue: [
				^(self leftsideBlocked).
			] ifFalse: [
				(self direction = #right) ifTrue: [
					^(self rightsideBlocked).
				]
			] 
		]
	].