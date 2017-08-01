module BabblersHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_babblers_path
    elsif action_name == 'confirm'
      babblers_path
    end
  end    
end
