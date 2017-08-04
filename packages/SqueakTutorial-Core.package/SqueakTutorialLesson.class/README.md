A SqueakTutorialLesson is superclass of all lessons containing all necissary methods and attributes the lessons should have.

Instance Variables
	classInfos:				Dictionary
	inspectAttributes:		Dictionary
	lessonDescription:		String
	lessonName:			String
	lessonWindow:			SqueakTutorialLessonWindow
	playfield:				SqueakTutorialGridPlayfield

classInfos
	- Dictionary containing classes, their messages and the description of them for the user to show

inspectAttributes
	- Containing attributes and the code to run to get the value of this attribute

lessonDescription
	- The description for this lesson

lessonName
	- The name for this lesson

lessonWindow
	- The instance of the window the lesson will be displayed

playfield
	- The playfield of the window
