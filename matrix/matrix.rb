class Matrix
  # create an immutable matrix
  attr_reader :rows, :columns

  def initialize(str_matrix)
    @rows = parse_rows(str_matrix)
    @columns = @rows.transpose
  end

  def parse_rows(str_matrix)
    str_matrix.split("\n").map { |row| 
      row.split() 
    }.each { |val| 
      val.map!(&:to_i) 
    }
  end

end