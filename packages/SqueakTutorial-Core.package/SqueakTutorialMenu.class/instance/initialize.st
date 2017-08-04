initialization
initialize
	
	super initialize.
	self currentUnitID: 1.
	
	self
		paneColor: Color white;
		createLessonScreen.
	
	self
		initializeNavigationButtonWithDirection: 'left';
		initializeNavigationButtonWithDirection: 'right';
		updateButtonBack;
		updateButtonForward.
	
	self
		createTitleField;
		createUnitTitleOfUnit: self currentUnitID.
	
	self addAllUIElements.