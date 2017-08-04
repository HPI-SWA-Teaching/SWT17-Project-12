accessing
lessons
	"Answers a dictionary of all lessons group by unit names"
	
	lessons ifNil: [lessons := Dictionary new].
	^ lessons
