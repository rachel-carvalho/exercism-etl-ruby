module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(original)
    original.flat_map { |score, letters| letters.map(&:downcase).product([score]) }.to_h
  end
end
