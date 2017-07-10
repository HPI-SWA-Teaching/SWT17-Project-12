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
		
	self addMessageToClass: 'Integer'
		withName: 'timesRepeat (Loop)'
		withInfo: ('" ***x*** timesRepeat: [ ***Instruction to repeat*** ]"' , Character cr , Character cr , '"Repeats the Instruction given x times."').