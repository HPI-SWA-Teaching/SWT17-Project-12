creation
open: anObject withAttributes: anAttributesDictionary fromLesson: aLesson
	"Create an inspect window which shows specific attributes of an object from a lesson"

	| inspectWindow |
	
	inspectWindow := self new.
	inspectWindow attributesDict: anAttributesDictionary.
	inspectWindow lesson: aLesson.
	inspectWindow initializeComponents: anObject.