class Acronym
  def self.abbreviate(long_name)
    long_name.scan(/\b[a-zA-Z]/).map(&:upcase).join()
  end
end