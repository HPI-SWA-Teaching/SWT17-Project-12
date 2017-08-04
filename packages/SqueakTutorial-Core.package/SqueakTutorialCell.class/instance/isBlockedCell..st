blocking
isBlockedCell: aMouse
	"Returns a boolean if this cell is blocked for a specific mouse object"
	
	self visibleObject ifNil: [^ false].
	^ self visibleObject isBlocked: aMouse.