blocking
isBlocked: aMouse
	"Answers if the cell is blocked for mouse movement"

	^ (self gateColor = aMouse color) not.