initialization
registerClassInfos

	self addMessageToClass: 'mouse'
		withName: 'move:'
		withInfo: ('"move: aDirection"' , Character cr , Character cr , '"Moves the mouse in a specific direction. aDirection can be `#left`, `#right`,`#up`, `#down`"').