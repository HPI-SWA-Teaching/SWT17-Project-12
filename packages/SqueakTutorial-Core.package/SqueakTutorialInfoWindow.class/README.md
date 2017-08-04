A SqueakTutorialInfoWindow is a SystemWindow containing information about messages and their description of the current lesson.

Instance Variables
	classInfos:						Dictionary
	currentSelectedClass:			String
	currentSelectedMessage:		String
	listClasses:						PluggableListMorph
	listMessages:					PluggableListMorph
	messageDescription:			PluggableTextMorph

classInfos
	- Dictionary containing classes, their messages and the description of them for the user to show

currentSelectedClass
	- The name of the class currently selected in the list of the classes

currentSelectedMessage
	- The name of the message currently selected in the list of the messages

listClasses
	- The instance of the list containing all class names

listMessages
	- The instance of the list containing all messages to the selected class

messageDescription
	- Contains information about a slected message from the messages list
