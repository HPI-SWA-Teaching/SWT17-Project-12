initialization
addMessageToClass: aClassString withName: aMessageName withInfo: aMessageInfo

	| tempDictionary |
	
	"(self classInfos at: aClassString) ifAbsent: [
		tempDictionary := Dictionary new.
		tempDictionary at: aMessageName put: aMessageInfo.
		self classInfos at: aClassString put: tempDictionary]."

	(self classInfos includesKey: aClassString)
		ifTrue: [
			(self classInfos at: aClassString) at: aMessageName put: aMessageInfo]
		ifFalse: [
			tempDictionary := Dictionary new.
			tempDictionary at: aMessageName put: aMessageInfo.
			self classInfos at: aClassString put: tempDictionary].