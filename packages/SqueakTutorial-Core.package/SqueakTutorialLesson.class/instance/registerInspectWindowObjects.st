initialization
registerInspectWindowObjects
	"Add classes, attributes and the values of them to the inspect window objects which can be inspected at the inspect window if enabled
	
		usage:       self addObjectToInspect: OBJECT withAttributeName: 'NAME OF ATTRIBUTE' withValue: 'CODE TO EXECUTE TO GET VALUE'."

	^ self subclassResponsibility