class Complement
  @@nucleotide_mapping = {'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna_string)
    return '' if (dna_string =~ /^[CGAT]+$/).nil?

    dna_string.chars.map{ |nucleotide|  @@nucleotide_mapping[nucleotide] }.join('')
  end
end

module BookKeeping
  VERSION = 4
end
