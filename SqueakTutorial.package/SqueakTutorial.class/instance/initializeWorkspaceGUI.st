initialization
initializeWorkspaceGUI
	
	|editorGUI|

	editorGUI := UIManager default edit: 'Code eingeben'.
	editorGUI color: Color white.
	editorGUI extent: 390@500.
	editorGUI position: 405@5.
	self addMorph: editorGUI.