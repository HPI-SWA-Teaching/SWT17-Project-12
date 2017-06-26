movement
rotate: newDirection
	
	| currentDirection cellExtents |
	
	currentDirection := self direction.
	
	(newDirection = self direction) ifFalse: [
		cellExtents := (self lesson grid extent x) / (self lesson grid cellAmount).
		(newDirection = #up) ifTrue: [
			self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_up_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents).
		].
		(newDirection = #down) ifTrue: [
			self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents).
		].
		(newDirection = #left) ifTrue: [
			self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_left_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents).
		].
		(newDirection = #right) ifTrue: [
			self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_right_', self color ,'.png') fullName) scaledToSize: cellExtents@cellExtents).
		].
	
		self direction: newDirection.
	].