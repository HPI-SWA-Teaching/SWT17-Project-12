as yet unclassified
addPlatformToPosition: aPosition

	| cellExtent platform |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	platform := SqueakTutorialPlatform new.
	
	platform morph: ImageMorph new.
	"platform morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'platform.png') fullName) scaledToSize: cellExtent@cellExtent)."
	platform morph image: (SqueakTutorialImageCache imagePlatform scaledToSize: cellExtent@cellExtent).
	platform gridX: aPosition x.
	platform gridY: aPosition y.
	
	(self grid cellAt: aPosition) addMorph: platform morph.
	platform morph setProperty: #Platform toValue: 1.
	
	^ platform