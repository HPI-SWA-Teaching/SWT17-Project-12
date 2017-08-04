add / remove
removeObject: anObject fromPosition: aPosition
	"Remove a specific object from the cell at a position of the grid"

	(grid cellAt: aPosition) submorphs copy do: [:morph | (anObject = morph) ifTrue: [morph delete]]