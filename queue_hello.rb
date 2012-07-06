require "iron_worker_ng"
client = IronWorkerNG::Client.new
tasks = []
1000.times do |i|
  puts "#{i}"
  t = client.tasks.create("hello", "foo"=>"bar")
  tasks << t
end

tasks.each_with_index do |t, i|
  client.tasks.wait_for(t.id)
  puts "#{i} - Log for #{t.id}:"
  puts client.tasks.log(t.id)
  puts
end

