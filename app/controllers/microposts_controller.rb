class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    
    def index
        @microposts = Micropost.all
    end

    def create
    end
  
    def destroy
    end
  end