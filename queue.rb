require "iron_worker_ng"
client = IronWorkerNG::Client.new
100.times do
  client.tasks.create("hello", "foo"=>"bar")
end
