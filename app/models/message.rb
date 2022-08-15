class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :group, inverse_of: :messages
  after_create_commit { broadcast_append_to group }

  def as_json(options)
    super(options).merge(user_avatar_url: user.gravatar_url)
  end
end
