class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
    flash[:notice] = "Question successfully added!"
      redirect_to  questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question= Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Question successfully updated!"
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      flash[:notice] = "Question successfully removed!"
      redirect_to questions_path
    end
  end

private
  def question_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:question).permit(:title, :content, :tags)
  end
end
