class Complement
  DNA_TO_RNA_MAPPING = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna_strand)
    if dna_strand.empty?
      return ''
    end

    dna_strand.split('').map{ |nucleotid| 
      DNA_TO_RNA_MAPPING[nucleotid] 
    }.join
  end
end