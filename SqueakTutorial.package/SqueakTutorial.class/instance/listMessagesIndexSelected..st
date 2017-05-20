listMessages
listMessagesIndexSelected: anInt

	"TODO update description text"
	| selectedMessage |
	selectedMessage := (self listMessages getList at: anInt).
	self messageDescription setText: ((self currentLessonClassInfos at: self currentSelectedClass) at: selectedMessage)