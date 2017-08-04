accessing
units
	"Answers a collection of all units in order"
	
	units ifNil: [units := OrderedCollection new].
	^ units
