creation
buildWithSize: aSize onMorph: aMorph
	"create a playfield with a specific size which resizes on a given morph"

	| gridPlayfield |
	
	gridPlayfield := self new.
	gridPlayfield grid: (SqueakTutorialGrid size: aSize onMorph: aMorph).
	aMorph lessonDisplay addMorph: gridPlayfield grid.
	
	^ gridPlayfield