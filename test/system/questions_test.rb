require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying ? yields a rude response from the coach" do
    visit ask_url
    fill_in "question", with: "?"
    click_on "Ask"
    assert_text 'Silly question, get dressed and go to work!'
  end

  test "saying correct question yields a 'great' from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    take_screenshot
    assert_text 'Great!'
  end
end
