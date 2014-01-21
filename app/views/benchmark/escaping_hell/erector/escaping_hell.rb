class Views::Benchmark::EscapingHell::Erector::EscapingHell < Erector::Widget
  def content
    html do
      head do
        title "Escaping Hell"
      end
      body do
        @text.each do |t|
          text "#{t}\n"
        end
      end
    end
  end
end
