as yet unclassified
runCodeFromInputField
	
	| codeString |
	
	codeString := self editGUI text.
	(Compiler evaluate: codeString for: self currentLesson logged: false).