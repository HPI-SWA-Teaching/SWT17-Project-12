finish check
rightCodeUsed: theCode
	"Answers whether the user has used the right code segments to complete the lesson"

	| right down left up bool |
	
	up := 'moveUpByAmount'.
	right := 'moveRightByAmount'.
	down := 'moveDownByAmount'.
	left := 'moveLeftByAmount'.
	
	bool := (((theCode occurrencesOfRegex: up) > 0) | ((theCode occurrencesOfRegex: right) > 0) | ((theCode occurrencesOfRegex: down) > 0) | ((theCode occurrencesOfRegex: left) > 0)).
	
	^ bool