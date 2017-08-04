initialization
addObjectToInspect: anObject withAttributeName: anAttributeName withValue: aValue

	| tempDictionary |

	(self inspectAttributes includesKey: anObject)
		ifTrue: [
			(self inspectAttributes at: anObject) at: anAttributeName put: aValue]
		ifFalse: [
			tempDictionary := Dictionary new.
			tempDictionary at: anAttributeName put: aValue.
			self inspectAttributes at: anObject put: tempDictionary].