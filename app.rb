require 'rubygems'
require 'sinatra'

get '/hello' do
  response =<<EOF
<Response>
  <Say>Hello from moocode</Say>
</Response>
EOF
end

post '/call' do
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC0fc39d43ebae37ec0145c8f1a555edb2'
auth_token = 'e2b92697a6808211e2f0bfca3bc56d67'
@client = Twilio::REST::Client.new account_sid, auth_token
 
call = @client.account.calls.create(:url => "http://demo.twilio.com/docs/voice.xml",
    :to => "+14168271871",
    :from => "+14163615974")
puts call.to
end
