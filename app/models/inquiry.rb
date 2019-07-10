class Inquiry < ApplicationRecord
    validates :email, 
    presence: true,
    format: { 
      with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
      message: "must be a valid email address"
    }
  validates :description, presence: true
  validates :name, presence: true
end
