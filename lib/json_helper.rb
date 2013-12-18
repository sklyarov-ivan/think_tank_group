class JSON_Helper

  def self.parse_from_file( filename )
    JSON.parse( IO.read(filename) )
  end

end