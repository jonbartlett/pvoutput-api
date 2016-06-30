module PVOutput

  class Auth
    attr_accessor :system_id, :api_key

    def initialize(system_id, api_key)
      @system_id = system_id
      @api_key = api_key
    end
  end

end

