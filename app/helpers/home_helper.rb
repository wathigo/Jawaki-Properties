module HomeHelper
  def overview_prop
    Property.all.reverse.take(6)
  end
end
