class Event < ApplicationRecord

    
  has_many :attendances

  has_many :users, through: :attendances

  belongs_to :user
    
    validates :title, presence: true, length: {minimum: 5, maximum: 140}
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}

    validates :description, presence: true, length: {minimum: 20, maximum: 1000}

    validates :price, presence: true, numericality: { only_integer: true, greater_than: 1, equal_to: 1000}

    validates :location, presence: true

    validates :duration, 
    presence: true

    validates :start_date, presence: true

    validate :multiple

    validate :start_date_time

    #def multiple_5
      
      #  errors.add(:duration, "La durée doit être un multiple de 5.") unless
       # return self.duration %5 == 0
       # end
    
    #end
    
      #def start_date_time
        
      #    errors.add(:start_date, "Tu ne peux pas créer un évènement dans le passé") unless
      #    start_date > Time.now
      #    end
      #end
end
