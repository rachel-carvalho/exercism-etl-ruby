module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(original)
    original.map(&method(:assign_scores)).flatten(1).to_h
  end

  def self.assign_scores(items)
    score, letters = items
    letters.map { |letter| [letter.downcase, score] }
  end
end
