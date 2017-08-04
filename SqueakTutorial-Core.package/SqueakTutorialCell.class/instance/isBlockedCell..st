accessing
isBlockedCell: aMouse
	
	self visibleObject ifNil: [^ false].
	^ self visibleObject isBlocked: aMouse.