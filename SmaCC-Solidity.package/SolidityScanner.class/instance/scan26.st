generated
scan26
	self recordMatch: #(114).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scan26X2 ].
	currentCharacter == $1
		ifTrue:
			[ ^ self scan26X3 ].
	currentCharacter == $2
		ifTrue:
			[ ^ self scan26X4 ].
	currentCharacter == $3
		ifTrue: [ self recordMatch: #(114).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self scan4 ].
			currentCharacter == $2
				ifTrue:
					[ ^ self scan26X5 ].
			(currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $1)
						or: [ (currentCharacter between: $3 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter == $4
		ifTrue:
			[ ^ self scan26X1 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $5 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch