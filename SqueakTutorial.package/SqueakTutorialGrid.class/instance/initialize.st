as yet unclassified
initialize

	self numberOfColumns: 10.
	self numberOfRows: 10.

	self cells: Dictionary new.
	1 to: self numberOfColumns do: [:x |
		1 to: self numberOfRows do: [:y |
			| pt cell |
			pt := x@y.
			cell := SqueakTutorialCell new.
			
			self cells at: pt put: cell]].
	Transcript show: self cells.