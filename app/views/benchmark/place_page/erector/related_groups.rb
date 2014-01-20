class Views::Benchmark::PlacePage::Erector::RelatedGroups < Erector::Widget
  attr_reader :related_groups

  def content
    div :class => 'well sub_groups', :id => 'sub_groups' do
      div :class => 'hidden_mode', :id => 'sub_groups_list' do
        div :class => 'holder_header' do
          div :class => 'pull-left' do
            h3 do
              rawtext t('related_groups.header')
            end
          end
        end
        div :class => 'media-body' do
          ul do
            related_groups.each_with_index do |group, i|
              li('data-sub-group-id' => (group.id), 'data-sub-group-position' => i) do
                a(:href => ('https://www.couchsurfing.org/n/o/group/' + (group.id.to_s))) do
                  rawtext group.name
                end
              end
            end
          end
        end
      end
    end
  end
end
