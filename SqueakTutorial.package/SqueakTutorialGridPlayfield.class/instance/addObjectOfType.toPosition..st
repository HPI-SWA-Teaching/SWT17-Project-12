as yet unclassified
addObjectOfType: aType toPosition: aPosition

	| switch |

	switch := IdentityDictionary newFrom: {
		#Mouse -> [self addMouseToPosition: aPosition].
		#Wall -> ["self addWallToPosition: aPosition"].
		#Goal -> [self addGoalToPosition: aPosition].
		#Gate -> ["self addGateToPosition: aPosition"].
		#Platform -> ["self addPlatformToPosition: aPosition"]}.
		
	^ (switch at: aType ifAbsent: []) value