initialization
initializeButtons
	"Initializes all the buttons for the lesson window"

	| resetIcon runIcon infoIcon menuIcon finishIcon |
	
	self
		buttonReset: SimpleButtonMorph new;
		buttonRun: SimpleButtonMorph new;
		buttonFinish: SimpleButtonMorph new;
		buttonHelp: SimpleButtonMorph new;
		buttonBack: SimpleButtonMorph new.
	
	self buttonReset recolor: (Color fromString: '#dd3333').
	self buttonRun recolor: (Color fromString: '#3366cc').
	self buttonFinish recolor: (Color fromString: 'gray').
	self buttonHelp recolor: (Color fromString: '#ffcc33').
	self buttonBack recolor: (Color fromString: '#ffcc33').
	
	resetIcon := ImageMorph new.
	resetIcon
		image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/reset.png') fullName) scaledToSize: 50@50);
		position: (self buttonReset extent x + (resetIcon extent x / 2))@(self buttonReset extent y).
	
	runIcon := ImageMorph new.
	runIcon
		image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/run.png') fullName) scaledToSize: 50@50);
		position: (self buttonRun extent x + (runIcon extent x / 2))@(self buttonRun extent y).
	
	infoIcon := ImageMorph new.
	infoIcon
		image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/info.png') fullName) scaledToSize: 50@50);
		position: (self buttonHelp extent x + (infoIcon extent x / 2))@(self buttonHelp extent y).
	
	menuIcon := ImageMorph new.
	menuIcon
		image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/menu.png') fullName) scaledToSize: 50@50);
		position: (self buttonBack extent x + (menuIcon extent x / 2))@(self buttonBack extent y).
	
	finishIcon := ImageMorph new.
	finishIcon
		image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/finish.png') fullName) scaledToSize: 50@50);
		position: (self buttonFinish extent x + (finishIcon extent x / 2))@(self buttonFinish extent y).
	
	self buttonHelp
		label: '';
		target: self;
		actionSelector: #openInfoWindow.
	
	self buttonReset
		label: '';
		target: self;
		actionSelector: #resetLesson.
	
	self buttonRun
		label: '';
		target: self;
		actionSelector: #runCodeFromInputField.
					
	self buttonFinish
		label: '';
		target: self;
		actionSelector: nil;
		color: Color gray;
		enabled: false.
		
	self buttonBack
		label: '';
		target: self;
		actionSelector: #goBackToMenu.
					
	self buttonReset addMorph: resetIcon.
	self buttonRun addMorph: runIcon.
	self buttonHelp addMorph: infoIcon.
	self buttonBack addMorph: menuIcon.
	self buttonFinish addMorph: finishIcon.