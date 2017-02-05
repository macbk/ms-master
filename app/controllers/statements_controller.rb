class StatementsController < ApplicationController
	before_action :find_statement, only: [:show, :edit, :update, :destroy]

	def show
		respond_to do |format|
			format.html
			format.pdf do
				render pdf: "MaintenanceStatement",
				template: "statements/show.pdf.haml",
				locals: {:statement => @statement}
			end
		end
	end

	def new
		@current_helicopter = Helicopter.find_by(id: session[:selected_helicopter_id])
		@statement = @current_helicopter.statements.build
	end

	def create
		@current_helicopter = Helicopter.find_by(id: session[:selected_helicopter_id])
		@statement = @current_helicopter.statements.build(statement_params)
		if @statement.save
			flash[:success] = 'MS almost done'
			redirect_to @statement
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

	def find_statement
		@statement = Statement.find(params[:id])
	end
end
