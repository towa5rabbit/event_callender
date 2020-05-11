class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @user = User.new
  end

 
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        params.permit(:name, :email, :day)
      # params.require(:user).permit(:name, :email, :day)
    end
end
