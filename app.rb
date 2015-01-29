require 'sinatra'
require 'builder'

class TwilioApp < Sinatra::Base
post '/' do 
  builder do |xml|
      xml.instruct!
        xml.Response do
          xml.Say("Alex,,,you should listen to Abid more often. He knows best.")
        end
      end
    end
  end
end
