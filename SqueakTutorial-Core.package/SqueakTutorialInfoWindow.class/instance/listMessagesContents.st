listMessages
listMessagesContents

	(self currentSelectedClass ifNil: [^ nil]).

	^ (self classInfos at: self currentSelectedClass) keys