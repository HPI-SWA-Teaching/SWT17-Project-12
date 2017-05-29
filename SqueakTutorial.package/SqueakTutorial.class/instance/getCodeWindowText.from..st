as yet unclassified
getCodeWindowText: aPosition from: aPluggableTextMorph
	"set text from the code window when accepted"
	codeWindowText := aPosition.
	
	"<<<erzeugt fehler!>>>"
	"self mouseMorph position: codeWindowText."
	
	Transcript show: aPosition.