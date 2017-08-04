initialization
addMessageToClass: aClassString withName: aMessageName withInfo: aMessageInfo
	"Add a message with a name and description to a class to be displayed in the info window of this lesson"

	| tempDictionary |

	(self classInfos includesKey: aClassString)
		ifTrue: [
			(self classInfos at: aClassString) at: aMessageName put: aMessageInfo]
		ifFalse: [
			tempDictionary := Dictionary new.
			tempDictionary at: aMessageName put: aMessageInfo.
			self classInfos at: aClassString put: tempDictionary].