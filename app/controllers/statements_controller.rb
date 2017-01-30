class StatementsController < ApplicationController
	#before_action :find_statement, only: [:show, :edit, :update, :destroy]

	def show
	end

	def new
		@current_helicopter = Helicopter.find_by(id: session[:selected_helicopter_id])
		@statement = @current_helicopter.statements.build
	end

	def create
		@statement = current_helicopter.statements.build(statement_params)
		if @statement.save
			redirect_to @statement, notice: "Successfully created new statement"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def statement_params
		params.require(:statement).permit(:sot, :crs)
	end

	#def find_statement
	#	@statement = Statement.find(params[:id])
	#end
end
