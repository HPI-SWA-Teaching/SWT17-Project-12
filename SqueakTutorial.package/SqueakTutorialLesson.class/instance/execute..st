execution
execute: codeString

	"
	
	1. split string in different code blocks (by `.` / `LINE BREAK` / `EOF`)
	2. parse line
		1 split messages atomar
		2 get class name from first word
		3 build method stings (e.g. 'move:amount:' and '{#right, 5}'
		4 perform message on current lesson class (where 'category' equals class name from 2.2)
	3. wait time
	4. repeate 2-3 until no more code blocks available
	
	"