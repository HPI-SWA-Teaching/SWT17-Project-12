as yet unclassified
createWalls
	"Create wall objects on playfield grid"
	
	| wallPositions |
	
	wallPositions :=
		{0@0 . 1@0 . 2@0 . 0@1 . 2@1 . 0@2 . 2@2 . 3@2 . 4@2 . 5@2 . 6@2 . 0@3 . 6@3 . 0@4 . 1@4 . 2@4 . 3@4 . 4@4 . 6@4 . 4@5 . 6@5 . 4@6 . 6@6 . 7@6 . 8@6 . 4@7 . 8@7 . 4@8 . 5@8 . 6@8 . 7@8 . 8@8}.
	
	self playfield addObjectOfType: #Wall toPositions: wallPositions.