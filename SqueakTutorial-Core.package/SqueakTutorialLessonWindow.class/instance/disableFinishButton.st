as yet unclassified
disableFinishButton
	"Disables the finish button (for reset etc.)"

	self buttonFinish recolor: (Color fromString: 'gray').
	self buttonFinish actionSelector: nil.