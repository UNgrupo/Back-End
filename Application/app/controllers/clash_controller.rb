class ClashController < ApplicationController

    def list
        @item = 'list.json'
        @list = Core.for(@item)
        render json: @list, status:200
    end

    def metric
        @item = 'metrics.json'
        @metric= Core.for(@item)
        render json: @metric, status:200
    end

    
end
