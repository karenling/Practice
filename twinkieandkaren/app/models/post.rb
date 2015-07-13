# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :text             not null
#  public     :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  validates :title, :body, presence: true

  has_many(
    :taggings,
    class_name: 'Tagging',
    foreign_key: :post_id,
    primary_key: :id
  )

  has_many(
    :tags,
    through: :taggings,
    source: :tag
  )
end
