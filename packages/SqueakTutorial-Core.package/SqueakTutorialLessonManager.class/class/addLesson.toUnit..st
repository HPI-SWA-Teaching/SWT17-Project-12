as yet unclassified
addLesson: aLesson toUnit: aUnitString

	| tempList |

	(self lessons includesKey: aUnitString)
		ifTrue: [
			(self lessons at: aUnitString) add: aLesson]
		ifFalse: [
			tempList := OrderedCollection new.
			tempList add: aLesson.
			self lessons at: aUnitString put: tempList].