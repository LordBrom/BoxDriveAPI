<!--- Rename this file to "boxAuthentication.cfc" before use. --->

<cfcomponent name="boxAuthentication" output="false" hint="Box application credentials; [Rename this file to ""boxAuthentication"" before use]">

	<!---
		The private key provided by Box will need to be encrypted to a RSA private token.
		Save the key in its own file and run the following command using OpenSSL, and use the key in the resulting file.
			openssl rsa -in <file path> -out <file path>
		You will be prompted for the phasephrase provided with the private key.
	 --->
	<cffunction name="getPrivateKey" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "-----BEGIN RSA PRIVATE KEY-----#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"00000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"-----END RSA PRIVATE KEY-----#chr(10)#" />
		<cfreturn local.return />
	</cffunction>

	<cffunction name="getPublicKey" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "-----BEGIN PUBLIC KEY-----#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"0000000000000000000000000000000000000000000000000000000000000000#chr(10)#" &
			"00000000#chr(10)#" &
			"-----END PUBLIC KEY-----#chr(10)#" />
		<cfreturn local.return />
	</cffunction>

	<cffunction name="getKeyID" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "00000000" />
		<cfreturn local.return />
	</cffunction>

	<cffunction name="getEnterpriseID" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "00000000" />
		<cfreturn local.return />
	</cffunction>

	<cffunction name="getClientID" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "00000000000000000000000000000000" />
		<cfreturn local.return />
	</cffunction>

	<cffunction name="getClientSecret" access="public" returntype="string" output="false" hint="">
		<cfset local.return = "00000000000000000000000000000000" />
		<cfreturn local.return />
	</cffunction>

</cfcomponent>