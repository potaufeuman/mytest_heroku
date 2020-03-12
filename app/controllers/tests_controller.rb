class TestsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :update]
  before_action :correct_user,   only: [:edit, :update, :destroy]
  
  def index
    @user = current_user
    @tests = Test.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:user_id])
    @tests = @user.tests.paginate(page: params[:page])
  end
  
  def new
    @test = Test.new
  end
  
  def create
    @test = current_user.tests.build(test_params)
    if @test.save
      flash[:success] = "Test created!"
      redirect_to root_url
    else
      render root_url
    end
  end
  
  def edit
    
  end
  
  def update
    
  end

  def destroy
    
  end
  
  private
    def test_params
      params.require(:test).permit(:subject, :title)
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
