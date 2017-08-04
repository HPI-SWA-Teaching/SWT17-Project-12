initialization
showUnitButtons

	| lessonButton lessonNumber maxButtonsX buttonWidth buttonHeight row column maxButtonsY |

	self lessonScreen removeAllMorphs.

	lessonNumber := 1.
	maxButtonsX := 3.
	maxButtonsY := (((SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager units at: self currentUnitID)) size / maxButtonsX) ceiling).
	
	row := 0.
	column := 0.
	
	buttonWidth := (((self extent x * 0.82) - (self extent x * 0.18))) / maxButtonsX.
	buttonHeight := (((self extent y * 0.75) - (self extent y * 0.05))) / maxButtonsY.

	(SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager units at: self currentUnitID)) do: [:lesson |
		lessonButton := SimpleButtonMorph new.
		lessonButton recolor: (Color fromString: '#3366cc').
		
		lessonButton label: lesson lessonName.
		
		lessonButton submorphsDo: [:m| m color: (Color white)].
		lessonButton submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 20)].
		lessonButton extent: buttonWidth@buttonHeight.
		lessonButton position: (buttonWidth * column)@(buttonHeight * row).
		lessonButton target: self.
		lessonButton actionSelector: #startTutorial:withID:.
		lessonButton arguments: (Array with: lesson with: lessonNumber).
		lessonButton borderColor: Color white.
		lessonButton borderWidth: 2.
		lessonNumber := lessonNumber + 1.
		self lessonScreen addMorph: lessonButton.
		column := column + 1.
		(column >= maxButtonsX) ifTrue: [
			column := 0.
			row := row + 1]].