require 'pry'
# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User

  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = photos
  end

  def photos
    @photos.collect do |photo|
      photo.user == self
    end
  end

end

class Photo

  attr_accessor :user, :comment

  @@photos = []

  def user
    @user
  end

  def self.photos
    @@photos
  end

end

class Comment
end

Pry.start

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
