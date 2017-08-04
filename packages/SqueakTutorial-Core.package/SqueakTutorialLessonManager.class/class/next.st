lesson / unit
next
	"Answers the next lesson in the current unit"
	
	self lastLessonIndex: self lastLessonIndex + 1.
	^ (self lessons at: self currentUnit) at: lastLessonIndex