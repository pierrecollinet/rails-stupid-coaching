class PagesController < ApplicationController
  def answer
    @query = params[:query]
    your_message = @query

    answer = ""
    if your_message == your_message.upcase && your_message != "I am going to work right now!".upcase
      answer = "I can feel your motivation! "
      answer += coach_answer(your_message)
    elsif your_message == "I am going to work right now!".upcase
      answer = ""
    else
      answer = coach_answer(your_message)
    end
    @answer = answer
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message[-1] == "?"
      answer = "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      answer = ""
    else
      answer = "I don't care, get dressed and go to work!"
    end
    return answer
  end


  def ask
  end
end
