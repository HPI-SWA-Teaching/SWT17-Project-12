listMessages
listMessagesIndexSelected: anInt
	"When a method is clicked it shows its description"

	| selectedMessage |
	selectedMessage := (self listMessages getList at: anInt).
	self messageDescription setText: ((self classInfos at: self currentSelectedClass) at: selectedMessage)