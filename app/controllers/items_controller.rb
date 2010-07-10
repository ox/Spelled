class ItemsController < ApplicationController
  def index
    random_word = Word.find_by_id rand(Word.count) + 1
    session[:right_word] = random_word.right
    session[:wrong_word] = random_word.wrong
    
    puts random_word.inspect
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end
  
  def create
    guess = params[:item][:description]
    respond_to do |format|
      if guess == session[:right_word]
        random_word = Word.find_by_id rand(Word.count) + 1
        puts random_word.inspect
        session[:right_word] = random_word.right
        session[:wrong_word] = random_word.wrong
        session[:red] = false
      else
        session[:red] = true
      end
      format.js
    end
  end
end
