class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Shirt App" }
      end
end
