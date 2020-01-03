module HomeHelper
  def overview_prop
    Property.all.reverse
  end
end
