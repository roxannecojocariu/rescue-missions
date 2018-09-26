class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
    @answer.user = current_user
    @answers = @question.answers

    if @answer.save
      flash[:notice] = "Answer was successfully submitted."
      redirect_to question_path(@question)
    else
      flash[:notice] = @answer.errors.full_messages.join(", ")
      render 'questions/show'
    end
  end

private

  def answer_params
    params.require(:answer).permit(:description)
  end
end
