generated
scanForTokenX3
	self recordMatch: #(1).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(121).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch