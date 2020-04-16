class DemoController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def about
    render "demo/about_us"  
    
  end

  def contact
    if ['us', 'ca'].include?(params[:country])
      @phone = "(800) 123 - 2323"
    elsif params['country'] == "uk"
      @phone = "+1 4544 - 2343"
    else
      @phone = "123123123123"
    end
    render "demo/contact_us"
  end
  
  

end
