require 'iron_cache'

@ic = IronCache::Client.new
cache = @ic.cache("my_cache")
cache.put("key", "hello world!")

puts 'value cached for later use.'
sleep 3
puts 'sometime later...'

10.times do |i|
  puts "Get item for request #{i}"
  item = cache.get("key")
  puts "Got value '#{item.value}' from cache."
end
