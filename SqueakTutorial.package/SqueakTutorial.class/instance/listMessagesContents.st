listMessages
listMessagesContents

	(self currentSelectedClass ifNil: [^ nil]).

	^ (self currentLessonClassInfos at: self currentSelectedClass) keys