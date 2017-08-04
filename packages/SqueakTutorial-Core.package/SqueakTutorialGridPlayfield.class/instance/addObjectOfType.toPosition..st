add / remove
addObjectOfType: aType toPosition: aPosition
	"Adds an object of a specific type to be displayed at a position in the grid on the playfield"

	| selector |

	selector := IdentityDictionary newFrom: {
		#Mouse -> [self addMouseToPosition: aPosition].
		#Wall -> [self addWallToPosition: aPosition].
		#Goal -> [self addGoalToPosition: aPosition].
		#Gate -> [self addGateToPosition: aPosition].
		#Platform -> [self addPlatformToPosition: aPosition]}.
		
	^ (selector at: aType ifAbsent: []) value