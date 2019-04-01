# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) where n is the length of my_sentence
# Space complexity: O(n) where n is the length of my sentence
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == "" || my_sentence == nil
  j = my_sentence.length - 1
  new_string = ""
  word = ""
  while j >= 0
    while j >= 0 && my_sentence[j] == " "
      j -= 1
      new_string += " "
    end

    while j >= 0 && my_sentence[j] != " "
      word += my_sentence[j]
      j -= 1
    end
    i = 0
    k = word.length - 1
    while i < k
      temp = word[i]
      word[i] = word[k]
      word[k] = temp
      i += 1
      k -= 1
    end
    new_string += word
    word = ""
  end
  i = 0
  while i < new_string.length
    my_sentence[i] = new_string[i]
    i += 1
  end
  return my_sentence
end
