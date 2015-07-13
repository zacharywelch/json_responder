require 'responders'

module Responders
  module JsonResponder
    def api_behavior
      if put?
        display resource, status: :ok, location: api_location
      else
        super
      end    
    end

    def json_resource_errors
      resource.errors
    end
  end
end
