class CoachingController < ApplicationController

  def answer
    @query = params["query"]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    return "Silly question, get dressed and go to work!" if your_message.include? "?"
    return "" if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    return "I don't care, get dressed and go to work!"
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    res = coach_answer(your_message)
    res = "I can feel your motivation! #{res}" if your_message == your_message.upcase && res != ""
    return res
  end

end
