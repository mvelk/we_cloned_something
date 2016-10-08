module Commentable
  extend ActiveSupport::Concern

  included do
    has_many :comments, as: :commentable
  end

  def receive_comment(content)
    self.comments.find_or_create_by(content: content)
  end
end
