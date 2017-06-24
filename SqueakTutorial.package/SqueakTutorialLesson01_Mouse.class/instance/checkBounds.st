as yet unclassified
checkBounds

	(self lesson gridX < 0) ifTrue: [self lesson gridX: 0].
	(self lesson gridY < 0) ifTrue: [self lesson gridY: 0].
	(self lesson gridX >= self lesson grid cellAmount) ifTrue: [self lesson gridX: self lesson grid cellAmount - 1].
	(self lesson gridY >= self lesson grid cellAmount) ifTrue: [self lesson gridY: self lesson grid cellAmount - 1].