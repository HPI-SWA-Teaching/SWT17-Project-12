as yet unclassified
disableFinishButton
	"Disables the finish button (for reset etc.)"

	self buttonFinish color: Color gray.
	self buttonFinish actionSelector: nil.