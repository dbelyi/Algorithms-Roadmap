// Using a Dictionary
func isAnagramDictionary(_ s: String, _ t: String) -> Bool {
  guard s.count == t.count else { return false }

  var dict = [Character: Int]()

  for char in s {
    dict[char, default: 0] += 1
  }

  for char in t {
    if let count = dict[char], count > 0 {
      dict[char] = count - 1
    } else {
      return false
    }
  }

  return true
}

// Using String sorting
func isAnagramStringSorting(_ s: String, _ t: String) -> Bool {
  return s.sorted() == t.sorted()
}

isAnagramDictionary("anagram", "nagaram") // true
isAnagramDictionary("rat", "car") // false

isAnagramStringSorting("anagram", "nagaram") // true
isAnagramStringSorting("rat", "car") // false

