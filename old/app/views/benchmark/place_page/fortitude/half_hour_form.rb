class Views::Benchmark::PlacePage::Fortitude::HalfHourForm < Views::Benchmark::PlacePage::Fortitude::Base
  def content
    current_time = start_time = Time.now.at_midnight
                      end_time = start_time + 1.day
                      while current_time < end_time
    option(:value => (current_time - start_time)) do
      text current_time.strftime("%l:%M %p")
    end
    current_time += 30.minutes
                    end
  end
end
