class Koszyk < ApplicationRecord
    has_many :line_items, dependent: :destroy

    def add_przedmiot(przedmiot)
        
        current_item = line_items.find_by(przedmiot_id: przedmiot.id) 
        if current_item
            
        else
            current_item = line_items.build(przedmiot_id: przedmiot.id)
        end
        current_item
    end

    def total_price
        line_items.to_a.sum { |item| item.total_price }
    end

   

end
