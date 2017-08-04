initialization
showUnitButtons

	| lessonNumber maxButtons row column extents position |

	self lessonScreen removeAllMorphs.
	
	maxButtons := 3.
	lessonNumber := 1.
	
	extents := self calculateUnitButtonExtentsWidthMaxCount: maxButtons.
	row := 0.
	column := 0.
	
	(SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager units at: self currentUnitID)) do: [:lesson |
		
		position := (extents x * column)@(extents y * row).
		self addButtonForLesson: lesson withLessonNumber: lessonNumber withExtent: extents atPosition: position.
		
		lessonNumber := lessonNumber + 1.
		
		column := column + 1.
		(column >= maxButtons) ifTrue: [
			column := 0.
			row := row + 1
		]
	].