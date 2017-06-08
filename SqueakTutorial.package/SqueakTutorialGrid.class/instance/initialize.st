accessing
initialize

	super initialize.
	self extent: 500@500.
	self numberOfColumns: 10.
	self numberOfRows: 10.

	self cells: Dictionary new.
	0 to: (self numberOfColumns - 1) do: [:x |
		0 to: (self numberOfRows - 1) do: [:y |
			| pt cell |
			pt := x@y.
			cell := SqueakTutorialCell new.
			cell position: (50 * x)@(50 * y).
			self addMorph: cell.
			
			self cells at: pt put: cell]].
	Transcript show: self cells.