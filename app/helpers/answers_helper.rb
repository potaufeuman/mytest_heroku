module AnswersHelper
  def now_answer(test)
    questions = []
    @test.questions.each_with_index do |question, i|
      questions.push(question)
      if question.id == params[:question_id].to_i
        @question_num = i+1
      end
    end
    @next_question = questions[@question_num]
  end
end
