module HousesHelper
  def choose_new_or_edit
    if action_name == 'new' 
      houses_path
    elsif action_name == 'edit'
      house_path
    end
  end
end
