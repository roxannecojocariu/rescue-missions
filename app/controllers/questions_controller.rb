class QuestionsController < ApplicationController
  before_action :authorize_user, except: [:index, :show]

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all.order(created_at: :desc)
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user

    if @question.save
      flash[:notice] = "Question was successfully submitted."
      redirect_to question_path(@question)
    else
      flash[:notice] = @question.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:notice] = "YOU UPDATED YOUR QUESTION!"
      redirect_to question_path
    else
      flash[:notice] = "YOU DID NOT UPDATE YOUR QUESTION"
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private

  def authorize_user
  if !user_signed_in || !current_user.admin?
    flash[:notice] = "You do not have access to this page."
    redirect_to root_path
  end
end

  def question_params
    params.require(:question).permit(:title, :description, :user)
  end
end
