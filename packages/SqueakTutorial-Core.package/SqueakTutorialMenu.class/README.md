A SqueakTutorialMenu is a PluggableSystemWindow which contains a navigation to go through the units and buttons for each lesson of every unit.

Instance Variables
	buttonBack:		SimpleButtonMorph
	buttonForward:		SimpleButtonMorph
	currentUnitID:		SmallInteger
	lessonScreen:		TransformMorph
	titleField:			TransformMorph
	unitTitleField:		TransformMorph

buttonBack
	- Navigation button to go one unit back

buttonForward
	- Navigation button to go one unit forward

currentUnitID
	- The ID of the currenty displaying unit

lessonScreen
	- The Collection of all lesson buttons in the middle of the menu

titleField
	- Field containing the title "Hour Of Code - Squeak"

unitTitleField
	- Field containing the name of the currently selected unit
