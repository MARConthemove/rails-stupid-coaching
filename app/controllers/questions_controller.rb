class QuestionsController < ApplicationController
  def ask
  end

  def answer
    raise
    @questions = params[:question]

    if @questions.blank?
      @answer = "I cant hear you!"
    elsif @questions.downcase == "i am going to work"
      @answer = "Great!"
    elsif @questions.downcase.include?("?")
      @answer = "Silly Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
