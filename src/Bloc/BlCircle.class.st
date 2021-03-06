Class {
	#name : #BlCircle,
	#superclass : #BlElementVectorGeometry,
	#instVars : [
		'radius',
		'origin'
	],
	#category : #'Bloc-Basic'
}

{ #category : #comparing }
BlCircle >> = anObject [
	self == anObject ifTrue: [ ^ true ].
	^ self class = anObject class
]

{ #category : #'geometry bounds' }
BlCircle >> geometryBounds: aBounds [
	"Load my bounds in mutable rectangle.
	@see #geometryBounds for more info"
	<return: #BlBounds>

	^ aBounds
		origin: self origin
		extent: (self radius * 2.0) asPoint
]

{ #category : #comparing }
BlCircle >> hash [
	^ self class hash
]

{ #category : #initialization }
BlCircle >> initialize [
	super initialize.
	
	radius := 0.
	origin := 0@0
]

{ #category : #geometry }
BlCircle >> matchExtent: anExtent [
	radius := anExtent min / 2.0.
	origin := (anExtent - anExtent min asPoint) / 2.0.

	self extent: anExtent
]

{ #category : #accessing }
BlCircle >> origin [
	^ origin
]

{ #category : #accessing }
BlCircle >> radius [
	^ radius
]
