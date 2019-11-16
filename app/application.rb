require 'rack'
class Application
  def call(env)
    resp = Rack::Response.new
    resp.write(check_time)
    resp.finish
  end
  def check_time
      time = Time.now.hour
      if time >= 12
        return "Good Afternoon!"
      else
        return "Good Morning!"
      end
  end
end
