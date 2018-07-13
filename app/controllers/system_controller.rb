class SystemController < ApplicationController
  def index
  end
  
  def search
    @search_string = params[:search_string]
    @book_list = [
      {
        :title => 'Test1',
        :price => 5.5,
        :condition => 'new',
        :author => 'Xinyu',
        :course => 'CSE 3901',
        :edition => "3rd",
        :description => 'This is made for fun',
        :ISBN => 'sakfb31231',
        :seller => 'me',
        }
      ]
  end
end
