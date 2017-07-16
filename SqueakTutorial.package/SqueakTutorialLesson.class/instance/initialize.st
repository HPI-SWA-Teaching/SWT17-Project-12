initialization
initialize

	self classInfos: Dictionary new.
	self inspectAttributes: Dictionary new.
	self registerClassInfos.
	self registerInspectWindowObjects.