class SessionsController < ApplicationController
  
  def new
  	@statements = Statement.all
  end

  def create
	session[:selected_helicopter_id] = params[:helicopter][:id]
	if session[:selected_helicopter_id].empty?
		flash[:danger] = 'Select a helicopter'
		redirect_to select_path
	else
		redirect_to new_statement_path
	end
  end
end