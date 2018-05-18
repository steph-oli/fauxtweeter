class TweetsController < ApplicationController
  # before_action :require_login

	def new
		@tweet = Tweet.new 
	end 

	def create
		tweet = Tweet.new(tweet_params)
		if tweet.save
			redirect_to user_path(tweet.user)
		else
			render 'new'
		end
	end 

	def index
    @tweet = Tweet.all
  end 

	private

	def tweet_params
		params.require(:tweet).permit(:user_id, :content)
	end 
end
