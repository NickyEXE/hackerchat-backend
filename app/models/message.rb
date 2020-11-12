class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  def username
    user.username
  end

  def username=(username)
    self.user = User.find_or_create_by(username: username)
  end

end
