class BJSSTest1
  include Capybara::DSL

  def get_button_ids
    button_id_array = []
    find_all(:css, 'a.button').each do |button|
      button_id_array << button[:id]
    end
    button_id_array
  end

  def click_red_button
    find_all(:css, 'a.button').each do |button|
      if button.native.css_value("background-color") == "rgba(198, 15, 19, 1)"
        click_link button.text
        break
      end
    end
  end

end
