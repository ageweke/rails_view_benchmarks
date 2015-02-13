class Views::Benchmark::LocalVariableHell::Erector::LocalVariableHell < Erector::Widget
  attr_reader :v_a, :v_b, :v_c, :v_d, :v_e, :v_f, :v_g, :v_h, :v_i, :v_j

  def content
    html do
      head do
        title do
          text "Local Variable Hell"
        end
      end
      body do
        10_000.times do
          text v_a
          text v_b
          text v_c
          text v_d
          text v_e
          text v_f
          text v_g
          text v_h
          text v_i
          text v_j
        end
      end
    end
  end
end
