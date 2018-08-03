# -- Inflight Entertainment -------------------------
# Users on longer flights like to start a second movie right when their first one ends, but they complain that the plane usually lands before they can see the ending. So you're building a feature for choosing two movies whose total runtimes will equal the exact flight length.
# Write a function that takes an integer flight_length (in minutes) and a list of integers movie_lengths (in minutes) and returns a boolean indicating whether there are two numbers in movie_lengths whose sum equals flight_length.
#
# When building your function:
#
# - Assume your users will watch exactly two movies
# - Don't make your users watch the same movie twice
# - Optimize for runtime over memory

def movie_combination_available?(flight_length:, movie_lengths:)
  movie_length_hash = movie_lengths.map{ |el| [el, true] }.to_h
  movie_lengths.each do |movie_length|
    next if movie_length > flight_length
    second_movie_length_required = flight_length - movie_length
    return true if movie_length_hash[second_movie_length_required]
  end
  false
end
