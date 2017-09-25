class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@images = Image.paginate(page: params[:page], per_page: 9)
  		               .order(id: :desc)
  	                   .where user_id: current_user.id
  	end
  end
end
