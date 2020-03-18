class QuestionsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :update, :destroy]
  
  def new
    @user = current_user
    @test = Test.find(params[:test_id])
    @question = Question.new
    @question.selects.build
  end

  def create
    @test = Test.find(params[:test_id])
    @question = @test.questions.build(question_params)
    if @question.save
      flash[:success] = "Question created!"
      redirect_to request.referrer || mytests_path
      # redirect_to mytests_path
    else
      redirect_to request.referrer || mytests_path
      # render mytests_path
    end
  end

  def edit
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:success] = "Test deleted"
    redirect_to request.referrer || mytests_path
  end
  
  private
    def question_params
      params.require(:question).permit(:test_id, :Q, :correct_A, :point, selects_attributes: [:id, :judge, :content])
    end
end
