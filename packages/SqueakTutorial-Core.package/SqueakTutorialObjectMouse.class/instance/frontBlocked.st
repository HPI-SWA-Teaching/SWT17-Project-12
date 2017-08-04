bounds
frontBlocked
	"Answers whether the front cell of the mouse is blocked"
	
	"TODO dictionary"
	
	"| directionSelector |
	
	directionSelector := IdentityDictionary newFrom: {
		#up -> [^ self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#down -> [^ self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#left -> [^ self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)].
		#right -> [^ self morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents)]}."

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