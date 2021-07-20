class QuestionsController < ActionController::Base

  def ask
  end

  def answer
    @answer = ""
    if params[:answer].downcase == "i am going to work right now!"
      @answer =  "Great!"
    elsif params[:answer].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
