class Post < ActiveRecord::Base
  validates :title, :content, :author_id, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :post_subs, dependent: :destroy, inverse_of: :post

  has_many :subs,
    through: :post_subs,
    source: :sub
end
