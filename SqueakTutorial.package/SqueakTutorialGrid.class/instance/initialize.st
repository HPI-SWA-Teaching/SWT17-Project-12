accessing
initialize

	super initialize.
	self extent: 500@500.
	self numberOfColumns: 10.
	self numberOfRows: 10.

	self cells: Dictionary new.
	1 to: self numberOfColumns do: [:x |
		1 to: self numberOfRows do: [:y |
			| pt cell |
			pt := x@y.
			cell := SqueakTutorialCell new.
			cell position: (50 * (x - 1))@(50 * (y - 1)).
			self addMorph: cell.
			
			self cells at: pt put: cell]].
	Transcript show: self cells.