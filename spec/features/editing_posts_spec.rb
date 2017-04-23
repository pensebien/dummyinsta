require "rails_helper"

feature "Editing posts"  do
            background do
                post = create(:post)
                visit "/"
                find("xpath", "//a[contains(@href, 'posts1')]")
                click_link "Edit"
            end


            scenario "the index displays correct created post information" do
                    post_one = create(:post, content: "this is post one")
                    post_two = create(:post, content: "this is the second post")


                    click_link 'New Post'
                    expect(page).to have_content("this is post one")
                    expect(page).to have_content("this is the second post")
                    expect(page).to have_css("img[src*=emma_deck")
            end
end