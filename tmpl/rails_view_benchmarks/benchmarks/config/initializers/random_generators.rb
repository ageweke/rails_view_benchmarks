class String
  UPPERCASE_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  LOWERCASE_ALPHABET = UPPERCASE_ALPHABET.downcase
  ALL_CASE_ALPHABET = UPPERCASE_ALPHABET + LOWERCASE_ALPHABET

  NUMBERS = "0123456789"
  PUNCTUATION = ".-_/"

  USERNAME_CHARACTERS = ALL_CASE_ALPHABET + NUMBERS + PUNCTUATION
  SECURE_HASH_CHARACTERS = ALL_CASE_ALPHABET + NUMBERS

  HEX_CHARACTERS = "ABCDEF" + NUMBERS

  class << self
    def random_secure_hash
      out = ""
      22.times { out << SECURE_HASH_CHARACTERS[rand(SECURE_HASH_CHARACTERS.length)] }
      out
    end

    def random_word
      out = ""
      (2 + rand(7)).times { out << LOWERCASE_ALPHABET[rand(LOWERCASE_ALPHABET.length)] }
      out
    end

    def random_hex_string(length)
      out = ""
      length.times { out << HEX_CHARACTERS[rand(HEX_CHARACTERS.length)] }
      out
    end

    def random_phrase
      (0..(1 + rand(6))).map { |i| random_word }.join(" ")
    end

    def random_text(min_words, max_words)
      num_words = min_words + rand(max_words - min_words)
      (0..(num_words - 1)).map { |i| random_word }.join(" ")
    end
  end
end

class Integer
  def self.random_id
    rand(1_000_000_000)
  end
end

class Time
  def self.random_future_date
    Time.now.at_midnight + rand(30).days
  end

  def self.random_future_time
    random_future_date + rand(86_400)
  end

  def self.random_time
    Time.now + rand(86_400)
  end

  def self.random_past_time
    Time.now - rand(86_400) - rand(10).days
  end
end
