require "rails_helper"

feature "Can view individual posts"  do
            scenario "Can click and view a single post" do
                    post_one = create(:post)

                    visit "/"
                    find(:xpath, "//a[contains(@href, "posts/1")]").click
                    expect(page.current_path).to eq(post_path(post))
            end
end