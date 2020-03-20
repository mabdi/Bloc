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
				spec repository: 'github://feenkcom/gtoolkit-examples:v0.7.13/src' ];
			baseline: 'GToolkitResourcesUtility' with: [
				spec repository: 'github://feenkcom/gtoolkit-utility:v0.7.18/src' ];
			baseline: 'Beacon' with: [
				spec repository: 'github://feenkcom/pharo-beacon:12ccdd418e939ee64d3ebdcfb75c5e3c5a2ce199/repository' ];
			baseline: 'GToolkitFenster' with: [
				spec repository: 'github://feenkcom/gtoolkit-fenster:v0.6.6/src' ].
		spec 
			package: #Bloc with: [
				spec requires: #(#Beacon #GToolkitFenster ). ];
			package: #'BlocHost-Mock' with: [
				spec requires: #(#Bloc ). ];
			package: #'Bloc-Tests' with: [
				spec requires: #(#Bloc #GToolkitExamplesEngine 'BlocHost-Mock' ). ]. ].

]
