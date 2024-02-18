require 'csv'

def parse_csv_to_hashes(file_path)
  csv_rows = CSV.read(file_path, headers: true)
  csv_rows.map(&:to_h)
end


file_path = 'data.csv'
data_as_hashes = parse_csv_to_hashes(file_path)

data_as_hashes.each do |row_hash|
  puts row_hash.inspect
end
