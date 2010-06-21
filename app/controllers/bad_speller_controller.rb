class BadSpellerController < ApplicationController  
  def index
    random_word = Word.find_by_id rand(Word.count) + 1
    @wrong_word = random_word.wrong
    session[:right_word] = random_word.right
    session[:wrong_word] = random_word.wrong
    session[:attempts] = 0
  end

  def check_spelling
    word = params[:word]
    if word == session[:right_word] 
      random_word = Word.find_by_id rand(Word.count) + 1
      @wrong_word = random_word.wrong
      session[:right_word] = random_word.right
      session[:wrong_word] = random_word.wrong
      render :text => session[:wrong_word]
    else
      render :text => "<span style=\"color:red;\">#{session[:wrong_word]}</span>"
    end
  end
end
