class Reservation < ApplicationRecord
     #validate :custom_valid

    #private
    #def custom_valid        
        #if index >10
            #errors.add(:index,:index_overflow)
        #end
    #end
    validates :last_name, presence: true
    validates :table_num, presence: true
    validates :time_until, presence: true


                   
        
end
