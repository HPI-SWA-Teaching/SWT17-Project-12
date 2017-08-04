add / remove
addPlatformToPosition: aPosition
	"Adds a platform object to be displayed at a specific position in the grid on the playfield"

	| cellExtent platform |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	platform := SqueakTutorialPlatform new.
	
	platform morph: ImageMorph new;
			gridX: aPosition x;
			gridY: aPosition y.
	platform morph image: (SqueakTutorialImageCache imagePlatform scaledToSize: cellExtent@cellExtent);
					setProperty: #Plaform toValue: 1.
	
	(self grid cellAt: aPosition) addMorph: platform morph;
							visibleObject: platform.
	
	^ platform