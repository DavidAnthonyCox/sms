module Formatting
  def self.phonify(ac, nmb)
    "(#{ac.to_s}) #{nmb.to_s.insert(3, "-")}"
  end
end