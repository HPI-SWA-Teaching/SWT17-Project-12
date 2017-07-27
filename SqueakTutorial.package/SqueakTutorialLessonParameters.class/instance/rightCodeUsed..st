as yet unclassified
rightCodeUsed: theCode

	| right down left up bool |
	
	up := 'moveUpByAmount'.
	right := 'moveRightByAmount'.
	down := 'moveDownByAmount'.
	left := 'moveLeftByAmount'.
	
	bool := (((theCode occurrencesOfRegex: up) > 0) | ((theCode occurrencesOfRegex: right) > 0) | ((theCode occurrencesOfRegex: down) > 0) | ((theCode occurrencesOfRegex: left) > 0)).
	
	^ bool