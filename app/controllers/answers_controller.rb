class AnswersController < ApplicationController
	def create
  	@question = Question.find(params[:question_id])
  	@answer = @question.answers.build(answer_params)
  	@answer.user = current_user
    @answer.save
  	
  	redirect_to @question
  end

  private
	  def answer_params
	    params.require(:answer).permit(:content, :user_id, :question_id)
	  end
end