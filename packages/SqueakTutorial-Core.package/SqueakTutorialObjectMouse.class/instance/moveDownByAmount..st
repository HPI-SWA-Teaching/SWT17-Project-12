mouse controlling
moveDownByAmount: anAmount
	"Move the mouse a specific amount of cells down"

	anAmount timesRepeat: [self moveDown].