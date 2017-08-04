initialization
addObjectToInspect: anObject withAttributeName: anAttributeName withValue: aValue
	"Add an Object with some attributes to a class to be inspected in the inspect window"

	| tempDictionary |

	(self inspectAttributes includesKey: anObject)
		ifTrue: [
			(self inspectAttributes at: anObject) at: anAttributeName put: aValue]
		ifFalse: [
			tempDictionary := Dictionary new.
			tempDictionary at: anAttributeName put: aValue.
			self inspectAttributes at: anObject put: tempDictionary].