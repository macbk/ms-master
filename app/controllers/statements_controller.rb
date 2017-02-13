class StatementsController < ApplicationController
	before_action :find_statement, only: [:show, :edit, :update, :destroy]

	def index
		@statements = Statement.all
	end

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
		if @statement.update(statement_params)
			redirect_to @statement
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def statement_params
		params.require(:statement).permit(:sot, :crs, tasks_attributes: [:id, :title, :term, :_destroy])
	end

	def find_statement
		@statement = Statement.find(params[:id])
	end
end
