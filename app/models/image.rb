class Image < ActiveRecord::Base
  belongs_to :user

  has_attachment :content_type => :image,
                 :storage => :db_file,
                 :size=> 1..2000.kilobytes,
                 :min_size=>1.kilobytes,
                 :max_size => 500.kilobytes,
                 :resize_to => '250x260>',
                 :thumbnails => { :thumb => [50, 50], :geometry => 'x50'},
                 :processor=>'Rmagick',
                 :path_prefix =>"public/image_data"
                 

  validates_as_attachment
end
