Class {
	#name : #BaselineOfBlocCore,
	#superclass : #BaselineOf,
	#category : #BaselineOfBlocCore
}

{ #category : #baseline }
BaselineOfBlocCore >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'GToolkitExamplesEngine' with: [
				spec repository: 'github://feenkcom/gtoolkit-examples:v0.7.3/src' ];
			baseline: 'Beacon' with: [
				spec repository: 'github://feenkcom/pharo-beacon:e6ab3f630bfd7e09dc4e983c9b094e62f44c817c/repository' ].
		spec 
			package: #Bloc with: [
				spec requires: #(#Beacon ). ];
			package: #'BlocHost-Mock' with: [
				spec requires: #(#Bloc ). ];
			package: #'Bloc-Tests' with: [
				spec requires: #(#Bloc #GToolkitExamplesEngine 'BlocHost-Mock' ). ]. ].

]
