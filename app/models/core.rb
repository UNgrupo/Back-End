class Core < ApplicationRecord

    include HTTParty
    #base_uri 'http://www.clashapi.xyz'
    base_uri 'https://api.apis.guru'
    format :json

    def self.for(term)
        #get("/api/#{term}")
        get("/v2/#{term}")

    end

end
