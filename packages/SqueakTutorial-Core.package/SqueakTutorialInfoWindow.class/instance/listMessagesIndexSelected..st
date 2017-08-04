listMessages
listMessagesIndexSelected: anInt

	| selectedMessage |
	selectedMessage := (self listMessages getList at: anInt).
	self messageDescription setText: ((self classInfos at: self currentSelectedClass) at: selectedMessage)