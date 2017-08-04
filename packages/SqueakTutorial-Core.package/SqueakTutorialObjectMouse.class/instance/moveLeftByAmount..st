mouse controlling
moveLeftByAmount: anAmount
	"Move the mouse a specific amount of cells left"

	anAmount timesRepeat: [self moveLeft].