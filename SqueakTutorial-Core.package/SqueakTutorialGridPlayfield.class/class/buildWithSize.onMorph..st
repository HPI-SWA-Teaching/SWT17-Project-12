as yet unclassified
buildWithSize: aSize onMorph: aMorph

	| gridPlayfield |
	
	gridPlayfield := self new.
	gridPlayfield grid: (SqueakTutorialGrid size: aSize onMorph: aMorph).
	aMorph lessonDisplay addMorph: gridPlayfield grid.
	
	^ gridPlayfield