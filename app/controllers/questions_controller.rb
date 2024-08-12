class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question_variable = params[:question]


    if @question_variable.blank?
      @answer_variable = "I can't hear you!"
    elsif @question_variable == "I am going to work"
      @answer_variable = "Great!"
    elsif @question_variable.ends_with?("?")
      @answer_variable = "Silly question, get dressed and go to work!"
    else @answer_variable = "I don't care, get dressed and go to work!"
    end
  end

end
