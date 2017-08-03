initialization
showUnitButtons

	| lessonButton lessonNumber maxButtonsX buttonWidth buttonHeight row column maxButtonsY firstPart secondPart buttonLabel |

	self lessonScreen removeAllMorphs.

	lessonNumber := 1.
	maxButtonsX := 3.
	maxButtonsY := (((SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager units at: self currentUnitID)) size / maxButtonsX) ceiling).
	
	row := 0.
	column := 0.
	
	buttonWidth := (((self extent x * 0.82) - (self extent x * 0.18))) / maxButtonsX.
	buttonHeight := (((self extent y * 0.85) - (self extent y * 0.05))) / maxButtonsY.

	(SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager units at: self currentUnitID)) do: [:lesson |
		lessonButton := SimpleButtonMorph new.
		lessonButton recolor: (Color fromString: '#3366cc').
		
		firstPart := (lesson lessonName copyFrom: 1 to: (lesson lessonName indexOf: $- ifAbsent: [0]) - 2).
		secondPart := (lesson lessonName copyFrom: (lesson lessonName indexOf: $- ifAbsent: [0]) + 2 to: lesson lessonName size).
		buttonLabel := firstPart , Character cr asString , '-' , Character cr asString , secondPart.
		
		lessonButton label: buttonLabel.
		
		lessonButton submorphsDo: [:m| m color: (Color white)].
		lessonButton submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 20)].
		lessonButton extent: buttonWidth@buttonHeight.
		lessonButton position: (buttonWidth * column)@(buttonHeight * row).
		"lessonButton position: ((((self extent x * 0.82) - (self extent x * 0.18)) * 0.1) + (buttonWidth * column))@((((self extent y * 0.95) - (self extent y * 0.05)) * 0.1) + (buttonHeight * row))."
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