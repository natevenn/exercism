class Gigasecond
  VERSION = 1
  
  def self.from(time)
  gigasecond_anniversary = time + (10**9)
  gigasecond_anniversary.utc
  end
end
