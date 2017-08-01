as yet unclassified
removeObject: anObject fromPosition: aPosition

	(grid cellAt: aPosition) submorphs copy do: [:morph | (anObject = morph) ifTrue: [morph remove]]