accessing
initializeCells

	| cellSize |
	
	cellSize := ((self extent x) / (self cellAmount)) rounded.

	self cells: Dictionary new.
	0 to: (self cellAmount - 1) do: [:x |
		0 to: (self cellAmount - 1) do: [:y |
			| pt cell |
			pt := x@y.
			cell := SqueakTutorialCell new.
			cell extent: cellSize@cellSize.
			cell position: (cellSize * x)@(cellSize * y).
			self addMorph: cell.
			
			self cells at: pt put: cell]].