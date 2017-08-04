as yet unclassified
open: aClassInfoDictionary
	"creates a window with object and method information"
	
	| infoWindow |
	
	infoWindow := self new.
	infoWindow classInfos: aClassInfoDictionary.
	infoWindow initializeComponents.
	infoWindow initializeWindowSpec.
	
		
	
