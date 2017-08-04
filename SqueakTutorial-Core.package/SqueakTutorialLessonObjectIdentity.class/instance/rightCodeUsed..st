as yet unclassified
rightCodeUsed: theCode

	| clone bool1 |
	
	clone := 'cloneMouse'.
	
	bool1 := (theCode occurrencesOfRegex: clone) > 0.
	
	^ bool1