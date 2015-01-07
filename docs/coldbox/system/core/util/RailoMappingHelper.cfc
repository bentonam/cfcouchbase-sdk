﻿/**
********************************************************************************
* Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
* www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
* Creation of mappings via Railo
*/
component{

	/**
	* Railo caches app mappings, but gives us a method to update them via the application "tag"
	*/
	function addMapping( required string name, required string path ) {
		var mappings = getApplicationSettings().mappings;
		mappings[ arguments.name ] = arguments.path;
		application action='update' mappings='#mappings#';
	}

}