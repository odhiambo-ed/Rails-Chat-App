class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :group, inverse_of: :messages
end
