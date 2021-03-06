# == Schema Information
#
# Table name: posts
#
#  id                     :integer          not null, primary key
#  body                   :text             not null
#  author_id              :integer          not null
#  host_id                :integer          not null
#  thumbnail_file_name    :string
#  thumbnail_content_type :string
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

class Post < ActiveRecord::Base

  has_attached_file :thumbnail, default_url: "missing.png"
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

  belongs_to :author,
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id

  belongs_to :host,
    class_name: :User,
    primary_key: :id,
    foreign_key: :host_id


  # has_many(
  #   :comments,
  #   :class_name => "Comment",
  #   :foreign_key => :post_id,
  #   :primary_key => :id
  # )
  #
  # has_many(
  #   :likes,
  #   :class_name => "Like",
  #   :foreign_key => :post_id,
  #   :primary_key => :id
  # )

  def date
    date = self.created_at.strftime("%d %b. %Y")
    day = date[0..1]
    month = date[3..5]

    "#{month} #{day}"
  end

  def time
    status = "am"
    time = self.created_at.strftime("%H:%M")
    minutes = time[3..4]
    hours = time[0..1]
    if hours.to_i > 12
      hours = (hours.to_i - 12).to_s
      status = "pm"
    end

    "#{hours}:#{minutes}#{status}"
  end

  def thumbnail_from_url(url)
    self.thumbnail = URI.parse(url)
    url
  end
end
