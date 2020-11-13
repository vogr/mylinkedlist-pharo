Class {
	#name : #MyNodeTest,
	#superclass : #TestCase,
	#category : #LinkedList
}

{ #category : #tests }
MyNodeTest >> testDoFollow [
	| n i acc |
	n := MyNode newWithValue: 5.
	n := MyNode newWithValue: 7 withNext: n.
	n := MyNode newWithValue: 11 withNext: n.
	i := 1.
	acc := 0.
	n do_follow: [ :x | acc := i * x + acc. i := i + 1 ].
	self assert: acc equals: (1 * 11) + (2 * 7) + (3 *  5)
]
