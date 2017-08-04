initialization
createUnitTitleOfUnit: anInt
	
	self unitTitleField: (StringMorph contents: 'Unit ', anInt).
	self unitTitleField
		emphasis: 1;
		font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 35).
	
	self updateUnitTitleField.