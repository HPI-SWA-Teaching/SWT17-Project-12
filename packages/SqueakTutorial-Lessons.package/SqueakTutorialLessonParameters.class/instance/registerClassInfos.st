initialization
registerClassInfos
	"Add classes, messages and the description of them to the class infos object which can be look up at the info window"

	self addMessageToClass: 'mouse'
		withName: 'moveRightByAmount'
		withInfo: ('"moveRightByAmount: x"' , Character cr , Character cr , '"Moves the mouse x cells to the right."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveLeftByAmount'
		withInfo: ('"moveLeftByAmount: x"' , Character cr , Character cr , '"Moves the mouse x cells to the left."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveDownByAmount'
		withInfo: ('"moveDownByAmount: x"' , Character cr , Character cr , '"Moves the mouse x cells to the bottom."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveUpByAmount'
		withInfo: ('"moveUpByAmount: x"' , Character cr , Character cr , '"Moves the mouse x cells to top."')