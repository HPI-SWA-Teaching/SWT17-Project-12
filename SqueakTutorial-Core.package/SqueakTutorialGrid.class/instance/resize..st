as yet unclassified
resize: newSize

	| newCellSize |
	
	self extent: newSize@newSize.
	
	newCellSize := (newSize / (self cellAmount)) rounded.
	
	0 to: (self cellAmount - 1) do: [:x |
		0 to: (self cellAmount - 1) do: [:y |
			| pt cell |
			pt := x@y.
			cell := self cells at: pt ifAbsent: [].
			cell resize: newCellSize.
			cell position: (newCellSize * x)@(newCellSize * y).
		]
	].