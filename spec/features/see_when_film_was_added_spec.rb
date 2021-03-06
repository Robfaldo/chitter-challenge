# As a user
# So that I can better appreciate the context of a review
# I want to see the time at which it was made

feature 'See date added' do
  scenario 'User can see when the film was added' do
    visit("/")
    add_film_with_rating("First Film", "8")

    expect(page).to have_content("First Film 8/10 #{Time.now.strftime("%Y-%m-%d")}")
  end
end
