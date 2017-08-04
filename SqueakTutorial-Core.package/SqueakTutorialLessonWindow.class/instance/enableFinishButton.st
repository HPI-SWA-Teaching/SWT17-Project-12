as yet unclassified
enableFinishButton
	"Enables the finish button and sets its color to green"

	self buttonFinish actionSelector: #finishLesson.
	self buttonFinish recolor: (Color fromString: '#00ad4b').