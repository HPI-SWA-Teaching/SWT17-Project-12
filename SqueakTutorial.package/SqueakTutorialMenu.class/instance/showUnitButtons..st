initialization
showUnitButtons: aLessonList

	| lessonButton lessonNumber maxButtonsX buttonWidth buttonHeight row column maxButtonsY |

	lessonNumber := 1.
	maxButtonsX := 3.
	maxButtonsY := ((aLessonList size / maxButtonsX) ceiling).
	
	row := 0.
	column := 0.
	
	buttonWidth := (((self extent x * 0.82) - (self extent x * 0.18))) / maxButtonsX.
	buttonHeight := (((self extent y * 0.95) - (self extent y * 0.05))) / maxButtonsY.

	aLessonList do: [:lesson |
		lessonButton := SimpleButtonMorph new.
		lessonButton label: lesson lessonName.
		lessonButton extent: buttonWidth@buttonHeight.
		lessonButton position: (buttonWidth * column)@(buttonHeight * row).
		"lessonButton position: ((((self extent x * 0.82) - (self extent x * 0.18)) * 0.1) + (buttonWidth * column))@((((self extent y * 0.95) - (self extent y * 0.05)) * 0.1) + (buttonHeight * row))."
		lessonButton target: self.
		lessonButton actionSelector: #startTutorial:withID:.
		lessonButton arguments: (Array with: lesson with: lessonNumber).
		lessonNumber := lessonNumber + 1.
		self lessonScreen addMorph: lessonButton.
		column := column + 1.
		(column >= maxButtonsX) ifTrue: [
			column := 0.
			row := row + 1]].