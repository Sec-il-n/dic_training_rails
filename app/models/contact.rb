class Contact < ApplicationRecord
  validates :content,length: {in: 1..140}
  # validates :content,presence: true
  with_options presence: true do
    validates :name
    validates :email
    validates :content
  end
end
