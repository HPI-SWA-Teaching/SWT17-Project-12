as yet unclassified
rightCodeUsed: theCode
	
	| loop right down bool1 bool2 bool3 |
	
	loop := 'timesRepeat'.
	right := 'moveRight'.
	down := 'moveDown'.
	
	bool1 := (theCode occurrencesOfRegex: loop) > 0.
	bool2 := (theCode occurrencesOfRegex: right) <= 1.
	bool3 := (theCode occurrencesOfRegex: down) <= 1.
	
	^ ((bool1 and: bool2) and: bool3)