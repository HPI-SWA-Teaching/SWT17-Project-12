accessing
getMouseImageWithColor: aColor withDirection: aDirection
	
	| directionNumber colorSelector |
	
	directionNumber := IdentityDictionary newFrom: {
		#up -> 1.
		#down -> 2.
		#left -> 3.
		#right -> 4}.
	
	colorSelector := Dictionary newFrom: {
		'white' -> [SqueakTutorialImageCache imagesMouseWhite at: (directionNumber at: aDirection)].
		'black' -> [SqueakTutorialImageCache imagesMouseBlack at: (directionNumber at: aDirection)].
		'grey' -> [SqueakTutorialImageCache imagesMouseGrey at: (directionNumber at: aDirection)]}.
	
	^ (colorSelector at: aColor) value
