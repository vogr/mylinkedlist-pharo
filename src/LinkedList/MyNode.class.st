Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'next'
	],
	#category : #LinkedList
}

{ #category : #'instance creation' }
MyNode class >> newWithValue: v [
    ^ self new value: v
]

{ #category : #'instance creation' }
MyNode class >> newWithValue: v withNext: n [
    ^ self new value: v ; next: n
]

{ #category : #iteration }
MyNode >> do_follow: f [
	f value: value.
	next ifNotNil: [ next do_follow: f ]
]

{ #category : #accessing }
MyNode >> next [
	^ next
]

{ #category : #accessing }
MyNode >> next: n [
	next := n
]

{ #category : #accessing }
MyNode >> value [
    ^ value
]

{ #category : #accessing }
MyNode >> value: v [
	value := v
]
