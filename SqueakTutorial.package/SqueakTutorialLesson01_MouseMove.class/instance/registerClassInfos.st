initialization
registerClassInfos

	self addMessageToClass: 'mouse' withName: 'move:' withInfo: ('<BOLD>move: aDirection </BOLD>' , Character cr , '#Moves the mouse in a specific direction. aDirection can be `#left`, `#right`,`#up`, `#down`').