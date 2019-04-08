# We have some clickstream data that we gathered on our client's website. Using cookies, we collected snippets of users' anonymized URL histories while they browsed the site. The histories are in chronological order and no URL was visited more than once per person.

# Write a function that takes two users' browsing histories as input and returns the longest contiguous sequence of URLs that appears in both.

# Sample output:

# findContiguousHistory(user0, user1)
#    /pink.php
#    /register.asp
#    /orange.html

# findContiguousHistory(user1, user2)
#    /green.html
#    /blue.html
#    /pink.php
#    /register.asp

# findContiguousHistory(user0, user3)
#    (empty)

# findContiguousHistory(user2, user3)
#    /blue.html

# findContiguousHistory(user3, user3)
#    /blue.html
#    /logout.php

user0 = [ "/start.html", "/pink.php", "/register.asp", "/orange.html", "/red.html" ];
user1 = [ "/start.html", "/green.html", "/blue.html", "/pink.php", "/register.asp", "/orange.html" ]
user2 = [ "/red.html", "/green.html", "/blue.html", "/pink.php", "/register.asp" ]
user3 = [ "/blue.html", "/logout.php" ]

def has_sub_array?(first_array, sub_array)
  first_matching_index = first_array.index(sub_array.first)
  first_array[first_matching_index .. first_matching_index + sub_array.length - 1] == sub_array
end

def longest_contiguous_history(user0, user1)
  same_paths_followed = [[]]

  user0.each do |path, i|
    matching_index = user1.index(path)
    if matching_index
      checking_array = same_paths_followed.last + [path]
      if has_sub_array?(user1, checking_array)
        same_paths_followed << checking_array
      else
        same_paths_followed << [path]
      end
    end
  end
  same_paths_followed.sort_by(&:length).last
end

# puts longest_contiguous_history(user0, user1) # pink, register, orange
puts  longest_contiguous_history(user1, user2) # green, blue, pink, register
