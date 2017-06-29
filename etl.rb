module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(original)
    original.reduce([]) do |all, items|
      score, letters = items
      all + letters.map { |letter| [letter.downcase, score] }
    end.to_h
  end
end
