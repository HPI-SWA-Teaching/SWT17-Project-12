initialization
registerClassInfos

	self addMessageToClass: 'mouse'
		withName: 'moveRight'
		withInfo: ('"moveRight"' , Character cr , Character cr , '"Moves the mouse one cell to the right."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveLeft'
		withInfo: ('"moveLeft"' , Character cr , Character cr , '"Moves the mouse one cell to the left."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveDown'
		withInfo: ('"moveDown"' , Character cr , Character cr , '"Moves the mouse one cell to the bottom."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveUp'
		withInfo: ('"moveUp"' , Character cr , Character cr , '"Moves the mouse one cell to top."').
		
	self addMessageToClass: 'mouse'
		withName: 'upsideBlocked'
		withInfo: ('"upsideBlocked"' , Character cr , Character cr , '"Answers, if the upside of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'downsideBlocked'
		withInfo: ('"downsideBlocked"' , Character cr , Character cr , '"Answers, if the downsideBlocked of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'leftsideBlocked'
		withInfo: ('"leftsideBlocked"' , Character cr , Character cr , '"Answers, if the left side of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'rightsideBlocked'
		withInfo: ('"rightsideBlocked"' , Character cr , Character cr , '"Answers, if the right side of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'Boolean'
		withName: 'whileTrue (Loop)'
		withInfo: ('" [aBoolean] whileTrue: [ ***Instruction to repeat*** ]"' , Character cr , Character cr , '"Repeats the given instruction continously as long as the Boolean is True."').