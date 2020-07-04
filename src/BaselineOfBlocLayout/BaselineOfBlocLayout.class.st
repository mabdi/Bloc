Class {
	#name : #BaselineOfBlocLayout,
	#superclass : #BaselineOf,
	#category : #BaselineOfBlocLayout
}

{ #category : #baseline }
BaselineOfBlocLayout >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'BlocCore' with: [
				spec repository: 'github://feenkcom/Bloc:v0.7.476/src' ];
			baseline: 'GToolkitExamplesEngine' with: [
				spec repository: 'github://feenkcom/gtoolkit-examples:v0.7.23/src' ].
		spec 
			package: #'Bloc-Layout' with: [
				spec requires: #('BlocCore' ). ];
			package: #'Bloc-Layout-Tests' with: [
				spec requires: #(#'Bloc-Layout' 'GToolkitExamplesEngine' ). ]. ].

]
