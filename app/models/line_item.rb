class LineItem < ApplicationRecord
  belongs_to :przedmiot
  belongs_to :koszyk


  def total_price

    przedmiot.price.to_i * quanity.to_i 
  
  end




end
