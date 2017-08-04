lesson / unit
addLesson: aLesson toUnit: aUnitString
	"Add a lesson to a specific unit name"

	| tempList |

	(self lessons includesKey: aUnitString)
		ifTrue: [
			(self lessons at: aUnitString) add: aLesson]
		ifFalse: [
			tempList := OrderedCollection new.
			tempList add: aLesson.
			self lessons at: aUnitString put: tempList]