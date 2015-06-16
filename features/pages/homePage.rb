class Home < SitePrism::Page
	set_url ui_url "/"

	elements :search_puppy, "div[class = 'name']" 
	elements :view_detail, "input[class = 'rounded_button']" 

    def select_puppy(name = 'Brook')
        index = puppy_names.index(name)
        view_detail[index].click
        DetailsPage.new
    end

	def puppy_names
		search_puppy.map(&:text)
	end
end
