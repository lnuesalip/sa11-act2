# Extracting hashtags from a tweet
def extract_hashtags(text)
  pattern = /#[a-zA-Z0-9._%+-]*/
  hashtags = text.scan(pattern)
  hashtags.flatten
end

p extract_hashtags("Love this #beautiful day! #sunny")

# Validating a Password
def valid_password?(password)
  pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,16}$/
  password.match?(pattern)
end

p valid_password?("Passw0rd")
p valid_password?("pass")

# # Finding numeric values in a string
def find_numbers(text)
  pattern = /\d+[.]?\d+/
  text.scan(pattern)
end

p find_numbers("The order was placed for 100.25 units at a price
of 20.75 each.")

# # Matching a date format
def valid_date?(date)
  pattern = /\d{4}-[0-1][0-9]-[0-3][0-9]/
  date.match?(pattern)
end

p valid_date?("2023-03-15")
p valid_date?("15-03-2023")

# # Parsing a Log Entry
def parse_log_entry(log)
  pattern = /(INFO|WARN|ERROR): (.*)/
  match = log.match(pattern)
  [match[1], match[2]] if match
end

log_entry = "ERROR: Disk space low"
p parse_log_entry(log_entry).inspect
