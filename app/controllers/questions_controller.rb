class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_user = params['???']
    @coach_answer = ''

    if @question_user.downcase != 'i am going to work' && @question_user[-1] != '?'
      @coach_answer = 'That is not a real question!'
    elsif @question_user.downcase == 'i am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = 'Silly question, get dressed and go to work!.'
    end
  end
end
