initialization
createTitleField

	| stringBounds |
	
	self titleField: (StringMorph contents: 'Hour of Code - Squeak').
	self titleField font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 40).
	stringBounds := titleField fullBounds.
	Transcript show: stringBounds x.