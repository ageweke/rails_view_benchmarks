class PlaceSubnavButton < Erector::Widget
  def content
    li :class => 'nav_button' do
      the_class = place_subnav_button.followed ? "followed" : "foo"
      a(:class => the_class, :href => (place_subnav_button.link)) do
        rawtext place_subnav_button.title
      end
    end
  end
end
