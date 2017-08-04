accessing
isBlockedCell: aMouse
	
	self visibleObject ifNil: [^ true].
	^ self visibleObject isBlocked: aMouse.