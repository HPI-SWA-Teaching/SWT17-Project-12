as yet unclassified
getCodeWindowText: aPosition from: aPluggableTextMorph

	|messageStringArray messageString attributesArrayOld attributesArray|
	
	messageString := ''.

	"set text from the code window when accepted"
	codeWindowText := aPosition.
	
	"<<<erzeugt fehler!>>>"
	"self mouseMorph position: codeWindowText asNumber asPoint."
	"self perform: codeWindowText asString asSymbol with:"
	"Transcript show: codeWindowText asString asSymbol."
	
	messageStringArray := '[a-zA-Z0-9]+[:]' asRegex matchesIn: codeWindowText.
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
		attributesArray add: anAttribute].
	
	"self mouseMorph perform: (messageString asSymbol) withEnoughArguments: attributesArray."
	self currentLesson perform: (messageString asSymbol) withEnoughArguments: attributesArray.
	
	Transcript show: messageString.
	Transcript show: Character cr.
	Transcript show: attributesArray.