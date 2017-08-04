initialization
createUnitTitleOfUnit: anInt
	
	self unitTitleField: (StringMorph contents: 'Unit ', anInt).
	self unitTitleField emphasis: 1.
	self updateUnitTitleField.
	self unitTitleField font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 35).