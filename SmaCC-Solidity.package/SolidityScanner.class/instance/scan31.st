generated
scan31
	self recordMatch: #(118).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scan31X2 ].
	currentCharacter == $8
		ifTrue:
			[ ^ self scan31X1 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan31X3 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $1 and: $7)
				or: [ currentCharacter == $9
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $w)
												or: [ currentCharacter between: $y and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch