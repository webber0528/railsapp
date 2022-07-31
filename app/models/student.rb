class Student < ApplicationRecord
    validates :number, presence: true, length:{is: 10}
    validates :number, format: { with: /\A\d{2}[1]{3}[1-5]\d{4}\z/}
    validates :name, presence: true
    validates :mail, presence: true
    validates :mail, format: { with: /\A\d{2}[1]{3}[1-5]\d{4}[a-z]+@+ed.fuk.kindai.ac.jp$\z/ }
  
    
    
end
