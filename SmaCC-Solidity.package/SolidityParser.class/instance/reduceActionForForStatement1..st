generated-reduction actions
reduceActionForForStatement1: nodes
	| result |
	result := SolForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result initialization: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolonTokens.
	result addNode: (nodes at: 5) to: result exps.
	result addToken: (nodes at: 6) to: result semicolonTokens.
	result addNode: (nodes at: 7) to: result exps.
	result rightParenToken: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result