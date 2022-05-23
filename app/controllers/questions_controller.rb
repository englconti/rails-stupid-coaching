class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # params[:question]
    @question = params[:question]
    # raise
    @answer = if @question.downcase == "i'm going to work right now!"
      "Great!"
    elsif @question.ends_with?("?")
      "Silly question, get dressed and go to work!."
    else
      "I don't care, get dressed and go to work!"
    end


  end

end
