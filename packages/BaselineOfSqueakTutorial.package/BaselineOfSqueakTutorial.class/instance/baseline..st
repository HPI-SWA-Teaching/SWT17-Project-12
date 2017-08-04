baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakTutorial-Core';
				package: 'SqueakTutorial-Lessons';
				package: 'SqueakTutorial-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('SqueakTutorial-Core' 'SqueakTutorial-Lessons')];
				group: 'tests' with: #('SqueakTutorial-Test')];
				yourself