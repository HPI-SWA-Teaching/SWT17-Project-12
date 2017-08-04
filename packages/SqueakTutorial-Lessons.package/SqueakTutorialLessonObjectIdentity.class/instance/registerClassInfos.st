initialization
registerClassInfos
	"Add classes, messages and the description of them to the class infos object which can be look up at the info window"

	self addMessageToClass: 'mouse'
		withName: 'moveRight'
		withInfo: ('moveRight' , Character cr , Character cr , '"Moves the mouse one cell to the right."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveLeft'
		withInfo: ('"moveLeft"' , Character cr , Character cr , '"Moves the mouse one cell to the left."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveDown'
		withInfo: ('"moveDown"' , Character cr , Character cr , '"Moves the mouse one cell to the bottom."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveUp'
		withInfo: ('"moveUp"' , Character cr , Character cr , '"Moves the mouse one cell to top."').
		
	self addMessageToClass: 'self'
		withName: 'cloneMouse'
		withInfo: ('"cloneMouse"' , Character cr , Character cr , '"Clone the mouse and save it as mouse2."')