baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SqueakTutorial';
				"package: 'SystemsThinkingWorkbench-Test' with: [spec requires: #('default')];"
				yourself.
			spec
				group: 'default' with: #('SqueakTutorial')];
				"group: 'tests' with: #('SystemsThinkingWorkbench-Test')];"
				yourself