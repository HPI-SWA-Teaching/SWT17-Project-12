as yet unclassified
registerClassInfos

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
		withInfo: ('"moveUpByAmount: x"' , Character cr , Character cr , '"Moves the mouse x cells to top."').