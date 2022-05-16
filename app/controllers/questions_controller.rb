class QuestionsController < ApplicationController
  def ask
    # render 'questions/ask.html.erb'
  end

  def answer
    # render 'questions/answer.html.erb'
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
