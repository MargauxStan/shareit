class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :guest, class_name: "User"
  belongs_to :host, class_name: "User"
end
