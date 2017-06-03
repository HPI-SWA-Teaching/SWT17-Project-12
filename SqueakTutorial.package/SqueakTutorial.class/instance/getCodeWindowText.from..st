as yet unclassified
getCodeWindowText: aPosition from: aPluggableTextMorph

	| messageString|
	
	messageString := ''.

	"set text from the code window when accepted"
	codeWindowText := aPosition.
	
	
	"(Compiler evaluate: codeWindowText asString for: self currentLesson logged: false)."
	(Compiler evaluate: ('self ' , codeWindowText) for: self currentLesson logged: false).
	
	
	"-----------------------
	OLD
	--------------"
	"messageStringArray := '[a-zA-Z0-9]+[:]' asRegex matchesIn: codeWindowText.
	messageStringArray do: [ :aMessage | messageString := messageString , aMessage].
	
	attributesArray := OrderedCollection new.
	attributesArrayOld := '([:].+\s)|([:].+$)' asRegex matchesIn: codeWindowText.
	Transcript show: attributesArrayOld.
	Transcript show: Character cr.
	attributesArrayOld do: [ :anAttribute |
		|length|
		length := anAttribute size.
		anAttribute := anAttribute withBlanksTrimmed.
		(anAttribute endsWith: '.')
			ifTrue: [anAttribute := anAttribute allButLast: 1].
		anAttribute := anAttribute
			copyReplaceAll: ':'
			with: ''
			asTokens: false.
		attributesArray add: anAttribute]."
	
	"self currentLesson perform: (messageString asSymbol) withEnoughArguments: attributesArray."
	
	"Transcript show: messageString.
	Transcript show: Character cr.
	Transcript show: attributesArray."