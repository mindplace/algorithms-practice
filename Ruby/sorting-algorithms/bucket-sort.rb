def bucket_sort(array)
  return array if array.uniq.length == 1

  buckets = []

  array.each do |num|
    buckets[num] = [] if buckets[num].nil?
    buckets[num].push(num)
  end

  sorted = []
  buckets.each do |bucket|
    next if bucket.nil?
    bucket = bucket_sort(bucket) if bucket.length > 1
    sorted << bucket
  end

  p sorted.flatten
end

bucket_sort([22, 22, 66, 66, 67, 99, 4, 66, 32, 56, 12, 19, 110, 84, 170])
