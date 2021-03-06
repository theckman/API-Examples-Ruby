require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
incident_id='P0W25BQ'
user_id='P3Y4319'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents/#{incident_id}/resolve"
endpoint << "?requester_id=#{user_id}"
token_string="Token token=#{api_token}"

response = HTTParty.put(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
