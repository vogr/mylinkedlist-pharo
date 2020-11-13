Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #LinkedList
}

{ #category : #tests }
MyLinkedListTest >> testDo [
   | l i acc|
	l := MyLinkedList new.
	l push: 5 ; push: 7; push: 11.
	i := 1.
	acc := 0.
	l do: [ :x | acc := i * x + acc. i := i + 1 ].
	self assert: acc equals: (1 * 11) + (2 * 7) + (3 *  5)
]

{ #category : #tests }
MyLinkedListTest >> testEmptyPop [
	"pop on empty list should trigger an error"
	| l p e |
	e := false.
	l := MyLinkedList new.
	[p := l pop] on: Error do: [e := true].
	self assert: e.
]

{ #category : #tests }
MyLinkedListTest >> testPush [
	| l |
	l := MyLinkedList new.
	l push: 5.
	self assert: (l head value = 5) & (l head next isNil)
]

{ #category : #tests }
MyLinkedListTest >> testPushPushPop [
	| l p |
	l := MyLinkedList new.
	l push: 5.
	l push: 6.
	p := l pop.
	self assert: (p = 6) & (l head value = 5) & (l head next = nil)
]
