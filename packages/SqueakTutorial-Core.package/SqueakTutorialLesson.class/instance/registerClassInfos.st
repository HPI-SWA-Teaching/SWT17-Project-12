initialization
registerClassInfos
	"Add classes, messages and the description of them to the class infos object which can be look up at the info window
	
		usage:       self addMessageToClass: 'CLASSNAME' withName: 'NAME OF MESSAGE' withInfo: 'DESCRIPTION OF MESSAGE'."

	^ self subclassResponsibility