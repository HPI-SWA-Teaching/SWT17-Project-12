code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self codeInputField text asString.
	self currentLesson resetLessonDisplay.
	
	[
		(Compiler evaluate: codeString for: self currentLesson logged: false).
		((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString)) ifTrue: [self enableFinishButton]. 
	] fork.

	"Transcript show: ('-1 - ' , (self currentLesson isFinished)).
	Transcript show: ('-22 - ' , (self currentLesson rightCodeUsed: codeString asString)).

	((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString asString)) ifTrue: [self enableFinishButton]. "
	
	"3 timesRepeat: [self currentLesson mouse moveDown. (Delay forMilliseconds: 2000) wait]."
	"[ 1 to: 5 do: [ :i | self currentLesson mouse moveDown. (Delay forSeconds: 2) wait ] ] fork"