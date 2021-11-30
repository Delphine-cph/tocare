class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :owner, optional: true, class_name: "User"
  belongs_to :recipient, optional: true, class_name: "User"

  def self.find_chatroom(owner, recipient)
    if self.find_by(owner_id: owner.id, recipient_id: recipient.id)
      return self.find_by(owner_id: owner.id, recipient_id: recipient.id)
    else
      return self.find_by(recipient_id: owner.id, owner_id: recipient.id)
    end
  end
end
