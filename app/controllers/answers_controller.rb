require "pry"
class AnswersController < ApplicationController
  before_action :logged_in_user
  include AnswersHelper
  
  def show
    
  end
  
  def new
    @user = current_user
    @test = Test.find(params[:test_id])
    @question = @test.questions.find(params[:question_id])
    @answer = Answer.new
  end
  
  def create
    @test = Test.find(params[:test_id])
    @question = @test.questions.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    now_answer(@test)  # 回答すると、次の質問にジャンプする。AnswersHelper参照。
    if @answer.save
      redirect_to new_test_question_answer_path(@test, @next_question.id)
      # if @next_question==nilになったら、採点画面にジャンプする。
    else
      redirect_to request.referrer || mytests_path
    end
  end
  
  private
    def answer_params
      params.permit(:select_A, :tested_id)
    end
end
