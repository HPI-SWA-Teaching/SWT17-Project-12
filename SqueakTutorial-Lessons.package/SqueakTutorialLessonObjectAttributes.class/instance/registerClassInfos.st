as yet unclassified
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
		withName: 'upperBlockFree'
		withInfo: ('"upperBlockFree"' , Character cr , Character cr , '"Answers, if the upper block of the mouse is free (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'lowerBlockFree'
		withInfo: ('"lowerBlockFree"' , Character cr , Character cr , '"Answers, if the lower block of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'leftBlockFree'
		withInfo: ('"leftBlockFree"' , Character cr , Character cr , '"Answers, if the left block of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'mouse'
		withName: 'rightBlockFree'
		withInfo: ('"rightBlockFree"' , Character cr , Character cr , '"Answers, if the right block of the mouse is blocked (as Boolean)."').
		
	self addMessageToClass: 'Boolean'
		withName: 'whileTrue (Loop)'
		withInfo: ('" [aBoolean] whileTrue: [ ***Instruction to repeat*** ]"' , Character cr , Character cr , '"Repeats the given instruction continously as long as the Boolean is True."').