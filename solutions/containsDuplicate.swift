// Brute Force
func containsDuplicateBruteForce(_ nums: [Int]) -> Bool {
  let n = nums.count

  for i in 0 ..< n {
    for j in i + 1 ..< n {
      if nums[i] == nums[j] { return true }
    }
  }

  return false
}

// Using Dictionary or Hash Table
func containsDuplicateHashTable(_ nums: [Int]) -> Bool {
  var hashMap: [Int: Int] = [:]

  for item in nums {
    if let count = hashMap[item] {
      hashMap[item] = count + 1
      if count + 1 > 1 {
        return true
      }
    } else {
      hashMap[item] = 1
    }
  }

  return false
}

// Using Set
func containsDuplicateSet(_ nums: [Int]) -> Bool {
  Set(nums).count != nums.count
}

let nums1 = [1, 2, 3, 1]
let nums2 = [1, 2, 3, 4]
let nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

containsDuplicateBruteForce(nums1) // true
containsDuplicateBruteForce(nums2) // false
containsDuplicateBruteForce(nums3) // true

containsDuplicateHashTable(nums1) // true
containsDuplicateHashTable(nums2) // false
containsDuplicateHashTable(nums3) // true

containsDuplicateSet(nums1) // true
containsDuplicateSet(nums2) // false
containsDuplicateSet(nums3) // true
