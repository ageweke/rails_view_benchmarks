class Surfer < Erector::Widget
  def content
    div :class => 'featured_person' do
      div :class => 'media' do
        a(:class => 'pull-left square avatar', :href => ('/profile.html?city_couchrequest=' + (surfer.city_couchrequest_id) + '&id=' + (surfer.profile_encoded_id)), :id => 'autogen_id_for_tracking_place_ocrs_clicked_ocr_1') do
          span(:class => 'media-object avatar imgsize_compact_thumb', :style => ('background-image:url(' + (cdn(surfer.profile_image.html_safe)) + ');')) do
            if surfer.verified?
            span :class => 'verified' do
              img :src => '/assets/verification-badge-8a2bb1613424ebe4344fed87c342ce6e.png'
            end
          end
        end
      end
      div :class => 'media-body' do
        h4 do
          a(:href => ('/profile.html?city_couchrequest=' + (surfer.city_couchrequest_id) + '&id=' + (surfer.profile_encoded_id))) do
            rawtext surfer.name
          end
        end
        p :class => 'city' do
          rawtext surfer.city
        end
        p :class => 'meta' do
          rawtext surfer.age
          text ','
          rawtext surfer.gender
        end
        p :class => 'meta' do
          rawtext surfer.reference_count
          text 'references'
        end
      end
    end
  end
  end
end