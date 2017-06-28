as yet unclassified
rightCodeUsed: theCode

	| loop right down |
	
	loop := 'timesRepeat'.
	right := 'moveRight'.
	down := 'moveDown'.
	(((theCode occurrencesOfRegex: loop) > 0) and: (((theCode occurrencesOfRegex: right) <= 1) and: ((theCode occurrencesOfRegex: down) <= 1))) ifTrue: [ ^true ].