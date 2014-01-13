module ErbPlacePageHelper
  def cdn(x)
    "https://d20rrv4k3o7n66.cloudfront.net" + x
  end

  def s3(x)
    "http://files.couchsurfing.s3.amazonaws.com" + x
  end
end
