require "pry"
class AnswersController < ApplicationController
  before_action :logged_in_user
  include AnswersHelper
  
  def index
    @user = current_user
    @test = Test.find(params[:test_id])
    answers_show(@test)
  end
  
  def show
    @user = current_user
    @test = Test.find(params[:test_id])
    answers_show(@test)
  end
  
  def new
    @user = current_user
    @test = Test.find(params[:test_id])
    @question = @test.questions.find(params[:question_id])
    answer_selects(@question)
    now_answer(@test)  # 回答すると、次の質問にジャンプする。AnswersHelper参照。
    @answers = []
    (@ia+1).times do
      @answer = Answer.new
      @answers = @answers.push(@answer)
    end
  end
  
  def create
    @user = current_user
    @test = Test.find(params[:test_id])
    @question = @test.questions.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    answer_selects(@question)
    now_answer(@test)  # 回答すると、次の質問にジャンプする。AnswersHelper参照。
    # @answer.select_A == 1? @answer.save :
    if @answer.save
      if @next_question == nil
        tested_id = @user.id
        redirect_to tested_test_answers_path(tested_id, @test.id)  # 採点ページにジャンプする。
      else
        redirect_to new_test_question_answer_path(@test, @next_question.id)
      end
    else
      redirect_to request.referrer || mytests_path
    end
  end
  
  private
    def answer_params
      params.permit(:test_id, :tested_id, :select_A, :select_id)
    end
end
