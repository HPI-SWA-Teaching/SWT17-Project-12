mouse controlling
eatCheese
	"Lets the mouse eat some cheese, if they are on the same field. If they are not, nothing happens."
	
	"((self lesson cheese gridX = self lesson gridX) and: (self lesson cheese gridY = self lesson gridY)) ifTrue: [
		self lesson cheese cheeseMorph delete.
		self lesson decrementCheeseCounter.
	]."