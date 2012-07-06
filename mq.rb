require 'iron_mq'

producer = Thread.new do
  mq = IronMQ::Client.new
  queue = mq.queue("my_queue")
  1000.times do |i|
    puts "PRODUCER: POST MSG: #{i}"
    queue.post("This is a message #{i}")
  end
end

sleep 5

consumer = Thread.new do
  puts 'CONSUMER: Starting'
  mq = IronMQ::Client.new
  queue = mq.queue("my_queue")
  while true
    msg = queue.get()
    break if msg.nil?
    puts "CONSUMER: GOT MSG: #{msg.body}"
    msg.delete
  end
end

producer.join
consumer.join
