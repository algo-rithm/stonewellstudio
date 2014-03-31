class WelcomeController < ApplicationController
  def index
  end

  def services
  end

  def inventory
  end

  def about
  end

  def gallery
  end
  
  def custom
    
  end
  
  def wholesale
    
  end
  
  def collection2013
  end
  
  def collection2014
    @tunics = CollectionItem.all_tunics
    @kimonos = CollectionItem.all_kimonos
  end
  
  def showitem
    @item = CollectionItem.find(params[:id])
    @thumb1 = @item.imageUrl1[0..-5]
    @thumb1 = @thumb1 + "thumb.jpg"
    @thumb2 = @item.imageUrl2[0..-5]
    @thumb2 = @thumb2 + "thumb.jpg"
    @thumb3 = @item.imageUrl3[0..-5]
    @thumb3 = @thumb3 + "thumb.jpg"
    @thumb4 = @item.imageUrl4[0..-5]
    @thumb4 = @thumb4 + "thumb.jpg"
    @contact_form = ContactForm.new
  end
  
  def thankyou
    
  end
  
  private
  
 
  
end
