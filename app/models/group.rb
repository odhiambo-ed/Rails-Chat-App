class Group < ApplicationRecord
    has_many :messages, dependent: :destroy,
                         inverse_of: :group

    after_create_commit { broadcast_append_to 'groups' }
end
