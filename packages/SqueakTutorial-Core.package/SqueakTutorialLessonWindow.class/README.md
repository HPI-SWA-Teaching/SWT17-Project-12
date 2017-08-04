A SqueakTutorialLessonWindow is xxxxxxxxx.

Instance Variables
	buttonBack:				SimpleButtonMorph
	buttonFinish:				SimpleButtonMorph
	buttonHelp:				SimpleButtonMorph
	buttonReset:				SimpleButtonMorph
	buttonRun:					SimpleButtonMorph
	codeInputField:				PluggableTextMorph
	currentCodeRunProcess:	Process
	currentLesson:				SqueakTutorialLesson
	lessonDescription:			String
	lessonDisplay:				TransformMorph
	messageDescription:		String

buttonBack
	- Button to go back to the menu on click

buttonFinish
	- Button to finish the lesson and go to next (or to menu if end of unit)

buttonHelp
	- Button to open SqueakTutorialInfoWindow

buttonReset
	- Button to reset graphical representation of the lesson on the left half

buttonRun
	- Button to run the code (will be changed to stop if code is executing and can be stopped with a click)

codeInputField
	- Field to write code in which will be executed

currentCodeRunProcess
	- Current running code process

currentLesson
	- Current lesson displayed in this window

lessonDescription
	- The description of this lesson

lessonDisplay
	- Morph containing the graphical representation for this lesson
