generated
scan29X2X2X1X1
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $2
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $3
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $4
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $8
		ifTrue: [ ^ self scan19 ].
	('15' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	(('$0' includes: currentCharacter)
		or: [ (currentCharacter between: $6 and: $7)
				or: [ currentCharacter == $9
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch