listClasses
listClassesIndexSelected: anInt

	self currentSelectedClass: (self listClasses getList at: anInt).
	self listMessages updateList.