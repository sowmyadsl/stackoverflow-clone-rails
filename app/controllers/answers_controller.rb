class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
    flash[:notice] = "Answer successfully added!"
      redirect_to  answers_path
    else
      render :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer= Answer.find(params[:id])
    if @answer.update(answer_params)
      flash[:notice] = "Answer successfully updated!"
      redirect_to answers_path
    else
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      flash[:notice] = "Answer successfully removed!"
      redirect_to answers_path
    end
  end

private
  def answer_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:answer).permit(:attribute1, :attribute2, :attribute3)
  end
end
