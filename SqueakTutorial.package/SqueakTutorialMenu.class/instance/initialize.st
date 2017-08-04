initialization
initialize
	
	super initialize.
	self currentUnitID: 1.
	
	self paneColor: Color white.
	self createLessonScreen.
	
	self initializeNavigationButtonWithDirection: 'left'.
	self initializeNavigationButtonWithDirection: 'right'.
	self updateButtonBack.
	self updateButtonForward.
	
	self createTitleField.
	self createUnitTitleOfUnit: self currentUnitID.
	
	self addAllUIElements.