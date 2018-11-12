class ClashController < ApplicationController


    def arenas
        @item = 'arenas'
        @arenas = Core.for(@item)
        render json: @arenas, status:200
    end

    def cards
        @item = 'cards'
        @cards = Core.for(@item)
        render json: @cards, status:200
    end

    def chests
        @item = 'chests'
        @chests = Core.for(@item)
        render json: @chests, status:200
    end

    def players
        @item = 'players'
        @players = Core.for(@item)
        render json: @players, status:200
    end

    def random
        @item = 'random-deck'
        @random = Core.for(@item)
        render json: @random, status:200
    end
end
