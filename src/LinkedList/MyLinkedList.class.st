Class {
	#name : #MyLinkedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #LinkedList
}

{ #category : #enumerating }
MyLinkedList >> do: f [
  head ifNotNil: [ head do_follow: f ]
]

{ #category : #accessing }
MyLinkedList >> head [
	^ head
]

{ #category : #accessing }
MyLinkedList >> pop [
	| prev_head |
	head ifNil: [ self error ].
	prev_head := head.
	head := head next.
	^ prev_head value
]

{ #category : #accessing }
MyLinkedList >> push: v [
    head:= (MyNode newWithValue: v withNext: head)
]
