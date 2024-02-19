class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]
    @answer = if params[:question] == "hello"
                "I don't care, get dressed and go to work"
              elsif params[:question] == "what time is it?"
                Time.now
              else
                "I don't care, get dressed and go to work"
              end
  end
end
