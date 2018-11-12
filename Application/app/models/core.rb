class Core < ApplicationRecord

    include HTTParty
    base_uri 'http://www.clashapi.xyz'
    format :json

    def self.for(term)
        get("/api/#{term}")
    end

end
