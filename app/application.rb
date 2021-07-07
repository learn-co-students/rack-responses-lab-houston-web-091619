class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now

        # time.hour >= 12 ? resp.write "Good Afternoon" : resp.write "Good Morning"

        if time.hour >= 12
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end
        
        resp.write "#{time.hour} \n"

        resp.write "ayyy lmao"

        resp.finish

    end
end