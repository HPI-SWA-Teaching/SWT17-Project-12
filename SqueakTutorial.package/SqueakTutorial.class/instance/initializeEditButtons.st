initialization
initializeEditButtons
	
	self buttonReset: SimpleButtonMorph new.
	self buttonRun: SimpleButtonMorph new.
	self buttonFinish: SimpleButtonMorph new.
	
	self buttonReset label: 'RESET'.
	self buttonRun label: 'RUN'.
	self buttonFinish label: 'FINISH'.