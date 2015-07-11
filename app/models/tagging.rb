# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  post_id    :integer          not null
#  tag_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Tagging < ActiveRecord::Base
  validates :post_id, :tag_id, presence: true

  belongs_to(
    :post,
    class_name: 'Post',
    foreign_key: :post_id,
    primary_key: :id
  )

  belongs_to(
    :tag,
    class_name: 'Tag',
    foreign_key: :tag_id,
    primary_key: :id
  )
end
