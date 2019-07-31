class BJSSTest2
  include Capybara::DSL

  def wait
    Selenium::WebDriver::Wait.new(:timeout => 10)
  end

  def loading_disappear
    wait.until{find("div#loading").native.css_value("display") == "none"}
  end
end
