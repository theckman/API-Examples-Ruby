require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
incident_id='PWTXP2C'
user_id='P3Y4319'
assign_to_user='P4RKUT9'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents/#{incident_id}/reassign"
endpoint << "?requester_id=#{user_id}"
endpoint << "&assigned_to_user=#{assign_to_user}"
token_string="Token token=#{api_token}"

response = HTTParty.put(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
