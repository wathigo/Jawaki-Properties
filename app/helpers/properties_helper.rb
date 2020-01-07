module PropertiesHelper
  def liked?(property)
    property.likes.find_by(user_id: current_user.id)
  end
end
