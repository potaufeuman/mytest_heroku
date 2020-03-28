class TestedController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def index
    @users = User.paginate(page: params[:page])
    @user = current_user
  end

  def show
    @user = current_user
    @answers = Answer.where(tested_id: @user.id)
    @questions = Question.find(@answers.question_id)
    @tests = Test.find(@questions.test_id).paginate(page: params[:page])
    # @tests = Test.where(tested_id: @user.id).paginate(page: params[:page])
  end

  def edit
  end

  def destroy
  end
end
