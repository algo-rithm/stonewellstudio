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
  end
  
  def showitem
    @item = CollectionItem.find(params[:id])
  end
  
  
end
