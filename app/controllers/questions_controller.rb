class QuestionsController < ApplicationController
before_action :logged_in_user, only: [:create, :edit, :update]
  
  def new
    @user = current_user
    @test = Test.find_by(test_id = test_id)
    @question = Question.new
  end

  def create
    @test = Test.find_by(test_id = test_id)
    @quesiton = @test.questions.build(question_params)
    if @quesiton.save
      flash[:success] = "Question created!"
      redirect_to mytests_path
    else
      render mytests_path
    end
  end

  def edit
  end

  def destroy
  end
  
  private
    def question_params
      params.require(:question).permit(:Q)
    end
end
