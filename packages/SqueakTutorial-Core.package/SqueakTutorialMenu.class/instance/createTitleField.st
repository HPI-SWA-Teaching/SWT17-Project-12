initialization
createTitleField
	"Creates the main title field"
	
	self titleField: (StringMorph contents: 'Hour of Code - Squeak').
	self titleField font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 40).