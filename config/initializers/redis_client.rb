ActiveSupport.on_load(:active_record) do
  host = BatchConfig.redis_host
  port = BatchConfig.redis_port
  timeout = BatchConfig.redis_timeout
  namespace = BatchConfig.redis_namespace
  redis_connection = Redis.new(host: host, port: port, timeout: timeout)
  $redis = Redis::Namespace.new(namespace, redis: redis_connection)
  $redis.flushdb if Rails.env = "test"
end

