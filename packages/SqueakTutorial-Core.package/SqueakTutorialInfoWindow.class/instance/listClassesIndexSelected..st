listClasses
listClassesIndexSelected: anInt
	"When a class is clicked it lists all respective methods to that class"

	self currentSelectedClass: (self listClasses getList at: anInt).
	self listMessages updateList.