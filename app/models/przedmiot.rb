class Przedmiot < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    has_many :line_items
    belongs_to :user, optional: true
    mount_uploader :image, ImageUploader
    serialize :image, JSON 
    

    validates :title, :brand, :price, presence: true
    validates :size, numericality: {only_decimal: true}, length: {maximum: 4, too_long: "${count}; Zbyt dużo znaków"}
    validates :description, length: {maximum: 1000, too_long: "${count}; Zbyt dużo znaków"}
    validates :title, length: {maximum: 60, too_long: "${count}; Zbyt dużo znaków"}
    validates :price, numericality: {only_decimal: true}, length: {maximum: 7, too_long: "${count}; Zbyt dużo znaków"}

    BRAND = %w{ Nike Adidas Vans Off-white DC Jordan Converse Timberland Balenciaga Gucci Puma Asics Reebok }
    CONDITION = %w{ Nowy Znakomity Dobry Zadowalający Słaby }
    
    
    private

    def not_referenced_by_any_line_item
        unless line_items.empty?
          errors.add(:base, "Line items present")
          throw :abort
    end

   
end

end
