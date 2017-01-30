class SessionsController < ApplicationController
  def new
  end

  def create
	session[:selected_helicopter_id] = params[:helicopter][:id]
	if session[:selected_helicopter_id].empty?
		flash.now[:danger] = 'Select a helicopter'
		render 'new'
	else
		redirect_to new_statement_path
	end
  end
end