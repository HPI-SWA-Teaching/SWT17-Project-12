A SqueakTutorialInspectWindow is a SystemWindow containing information about the attributes of an object and the possibility to run code there.

Instance Variables
	attributesDict:		Dictionary
	codeInputField:		PluggableTextMorph
	lesson:				SqueakTutorialLesson
	listAttributes:		PluggableListMorph
	outputField:		PluggableTextMorph

attributesDict
	- Containing attributes and the code to run to get the value of this attribute

codeInputField
	- Possibility to run code here in a text field which will run on the specific object

lesson
	- The instance of the current lesson

listAttributes
	- Containing all attributes from the object

outputField
	- A readonly text field containing the value of the selected attribute for the object
