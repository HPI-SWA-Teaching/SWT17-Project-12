code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self codeInputField text.
	self currentLesson resetLessonDisplay.
	
	[(Compiler evaluate: codeString for: self currentLesson logged: false)] fork.
	
	"3 timesRepeat: [self currentLesson mouse moveDown. (Delay forMilliseconds: 2000) wait]."
	"[ 1 to: 5 do: [ :i | self currentLesson mouse moveDown. (Delay forSeconds: 2) wait ] ] fork"