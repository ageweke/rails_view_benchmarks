class Views::Benchmark::EscapingHell::Fortitude::EscapingHell < Fortitude::Widget
  needs :the_text

  def content
    html do
      head do
        title "Escaping Hell"
      end
      body do
        the_text.each do |t|
          text "#{t}\n"
        end
      end
    end
  end
end
