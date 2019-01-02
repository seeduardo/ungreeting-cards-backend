class Api::V1::GreetingCardsController < ApplicationController
    before_action :find_greeting_card, only: [:update, :show, :destory]
    def index
        @greeting_cards = GreetingCard.all
        render json: @greeting_cards
    end
    
    def show
       render json: @greeting_card
    end

    def create
      @greeting_card = GreetingCard.create!(greeting_card_params)
      json_response(@greeting_card, :created)
    end

    def update
        @greeting_card.update(greeting_card_params)
         if @greeting_card.save
            render json: @greeting_card, status: :accepted
         else
            render json: { errors: @greeting_card.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
      @greeting_card.destroy
      head :no_content
    end

    private
    def greeting_card_params
        params.require(:greeting_card).permit(:title, :description, :category_id, :image,)
    end

    def find_greeting_card
        @greeting_card = GreetingCard.find(params[:id])
    end

end
