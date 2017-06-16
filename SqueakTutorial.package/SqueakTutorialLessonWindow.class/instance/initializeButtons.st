initialization
initializeButtons
	
	self buttonReset: SimpleButtonMorph new.
	self buttonRun: SimpleButtonMorph new.
	self buttonFinish: SimpleButtonMorph new.
	self buttonHelp: SimpleButtonMorph new.
	
	self buttonHelp label: '?';
					target: self;
					actionSelector: #openInfoWindow.
	
	self buttonReset label: 'RESET';
					target: self;
					actionSelector: #resetLesson.
	
	self buttonRun label: 'RUN';
					target: self;
					actionSelector: #runCodeFromInputField.
					
	self buttonFinish label: 'FINISH';
					target: self;
					actionSelector: nil;
					color: Color gray;
					enabled: false.