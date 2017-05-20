initialization
openInfoWindow

	| infoWindow |
	"SqueakTutorialInfoWindow new openInWindow."
	infoWindow := PluggableWindowSpec new.
	infoWindow extent: 400@400.
	infoWindow label: 'InfoWindow'.
	
	"PluggableSystemWindow"
	(ToolBuilder default buildPluggableWindow: infoWindow) openAsIs.