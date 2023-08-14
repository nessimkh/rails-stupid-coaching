class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answers = params[:answer]

    if @questions == 'I am going to work'
      @answers = 'Great!'
    elsif @questions.ends_with? '?'
      @answers =  'Silly question, get dressed and go to work!'
    else
      @answers =  "I don't care, get dressed and go to work!"
    end
  end
end
