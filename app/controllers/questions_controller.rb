class QuestionsController < ApplicationController


  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    elsif your_message
      @coach_answer =  "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.upcase.include? "?"
      @coach_answer = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
      @coach_answer = ""
    elsif your_message.upcase
      @coach_answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end


  def answer
    @question = params[:query]
    coach_answer(@question)
    coach_answer_enhanced(@question)
  end

  def ask
  end
end
