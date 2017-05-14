initialization
initializeEditButtons: editButtonsBackground

	|buttonReset buttonFinish|
	
	buttonReset := SimpleButtonMorph new.
	buttonFinish := SimpleButtonMorph new.
	
	buttonReset label: 'RESET'.
	buttonFinish label: 'FINISH'.
	
	buttonReset extent: 195@90.
	buttonFinish extent: 195@90.
	
	buttonReset position: 0@0.
	buttonFinish position: 195@0.
	
	editButtonsBackground addMorph: buttonReset.
	editButtonsBackground addMorph: buttonFinish.