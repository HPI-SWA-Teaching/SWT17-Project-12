cloning
cloneMouse
	"Clone the mouse and save it as 'mouse2'"

	self mouse2 ifNotNil: [
		(self playfield removeObject: self mouse2 mouseMorph fromPosition: (self mouse2 gridX)@(self mouse2 gridY)).
		self mouse2: nil].

	self mouse2: (self playfield addObjectOfType: #Mouse toPosition: (self mouse gridX)@(self mouse gridY)).
	self mouse2 color: self mouse color