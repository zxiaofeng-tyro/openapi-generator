note
 description:"[
		Swagger Petstore
 		This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
  		OpenAPI spec version: 1.0.0
 	    Contact: apiteam@swagger.io

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"

class
	ANOTHERFAKE_API

inherit

    API_I


feature -- API Access


	test_special_tags (client: CLIENT): detachable CLIENT
			-- To test special tags
			-- To test special tags
			-- 
			-- argument: client client model (required)
			-- 
			-- 
			-- Result CLIENT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(client)
			l_path := "/another-fake/dummy"


			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json">>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Patch", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { CLIENT } l_response.data ({ CLIENT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	


end
