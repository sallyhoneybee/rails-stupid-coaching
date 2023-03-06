class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = nil
    if @question == 'I am going to work'
      @answer = 'Great!'
      @answer
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
