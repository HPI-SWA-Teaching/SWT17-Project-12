initialization
initializeButtons

	| resetIcon runIcon infoIcon menuIcon finishIcon |
	
	self buttonReset: SimpleButtonMorph new.
	self buttonRun: SimpleButtonMorph new.
	self buttonFinish: SimpleButtonMorph new.
	self buttonHelp: SimpleButtonMorph new.
	self buttonBack: SimpleButtonMorph new.
	
	resetIcon := ImageMorph new.
	resetIcon image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'reset.png') fullName) scaledToSize: 50@50).
	resetIcon position: (self buttonReset extent x + (resetIcon extent x / 2))@(self buttonReset extent y).
	
	runIcon := ImageMorph new.
	runIcon image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'run.png') fullName) scaledToSize: 50@50).
	runIcon position: (self buttonRun extent x + (runIcon extent x / 2))@(self buttonRun extent y).
	
	infoIcon := ImageMorph new.
	infoIcon image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'info.png') fullName) scaledToSize: 50@50).
	infoIcon position: (self buttonHelp extent x + (infoIcon extent x / 2))@(self buttonHelp extent y).
	
	menuIcon := ImageMorph new.
	menuIcon image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'menu.png') fullName) scaledToSize: 50@50).
	menuIcon position: (self buttonBack extent x + (menuIcon extent x / 2))@(self buttonBack extent y).
	
	finishIcon := ImageMorph new.
	finishIcon image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'finish.png') fullName) scaledToSize: 50@50).
	finishIcon position: (self buttonFinish extent x + (finishIcon extent x / 2))@(self buttonFinish extent y).
	
	self buttonHelp label: '';
					target: self;
					actionSelector: #openInfoWindow.
	
	self buttonReset label: '';
					target: self;
					actionSelector: #resetLesson.
	
	self buttonRun label: '';
					target: self;
					actionSelector: #runCodeFromInputField.
					
	self buttonFinish label: '';
					target: self;
					actionSelector: nil;
					color: Color gray;
					enabled: false.
		
	self buttonBack label: '';
					target: self;
					actionSelector: #goBackToMenu.
					
	self buttonReset addMorph: resetIcon.
	self buttonRun addMorph: runIcon.
	self buttonHelp addMorph: infoIcon.
	self buttonBack addMorph: menuIcon.
	self buttonFinish addMorph: finishIcon.