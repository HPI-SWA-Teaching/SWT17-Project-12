baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakTutorial-Core';
				package: 'SqueakTutorial-Lessons';
				package: 'SqueakTutorial-Tests';
				"package: 'SystemsThinkingWorkbench-Test' with: [spec requires: #('default')];"
				yourself.
			spec
				group: 'default' with: #('SqueakTutorial-Core' 'SqueakTutorial-Lessons' 'SqueakTutorial-Tests')];
				"group: 'tests' with: #('SystemsThinkingWorkbench-Test')];"
				yourself