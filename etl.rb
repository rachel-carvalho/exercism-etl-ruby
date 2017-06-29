module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(original)
    original.map { |score, letters| letters.map { |letter| [letter.downcase, score] } }.flatten(1).to_h
  end
end
