initialization
initializeOutputField
	"Inititlize the instance of the attributes output field at the right of the inspect window"

	self outputField: PluggableCodePaneSpec new.
	self outputField model: Model new;
					setText: '';
					readOnly: true.
	self outputField: (ToolBuilder default buildPluggableCodePane: self outputField).
	
	