class Year
Year::VERSION = 1
  def self.leap?(date)
    date % 4 == 0 unless date % 100 == 0 && date % 400 != 0
  end
end
