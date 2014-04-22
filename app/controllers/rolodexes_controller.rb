class RolodexesController < ApplicationController
  # This method will be called by each action
  before_filter :find_rolodex, only: [:show, :edit, :update, :destroy]

  def show
  end
  
  def new
    @rolodex = Rolodex.new
  end

  def create
    @rolodex = Rolodex.new rolodex_params
    if @rolodex.save
      # display a success message to the user
      flash[:notice] = "You successfully saved this contact!"
      redirect_to root_path
    else
      flash[:error] = "You were unsuccessful saving this contact!"
      # display an error message to the user
      render :new
    end
    
  end

  def edit
  end

  def update
    if @rolodex.update_attributes rolodex_params
      # display a success message to the user
      flash[:notice] = "You successfully updated this contact!"
      redirect_to root_path
    else
      flash[:error] = "You were unsuccessful updating this contact!"
      # display an error message to the user
      render :edit
    end
  end

  def destroy
    @rolodex.delete
    redirect_to root_path 
  end

  private
    def rolodex_params
      params.require(:rolodex).permit(:name, :phone_number, :email, :address, :address_2, :city, :state, :zip, :is_cool, :gender, :description)
    end

    def find_rolodex
      @rolodex = Rolodex.find params[:id]
    end
end
