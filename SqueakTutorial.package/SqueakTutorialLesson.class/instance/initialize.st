initialization
initialize

	self classInfos: Dictionary new.
	self addMessageToClass: 'CLASS1' withName: 'MESSAGE1' withInfo: 'INFO TO MESSAGE1'.
	self addMessageToClass: 'CLASS1' withName: 'MESSAGE2' withInfo: 'INFO TO MESSAGE2'.
	self addMessageToClass: 'CLASS2' withName: 'MESSAGE2' withInfo: 'INFO TO MESSAGE2'.