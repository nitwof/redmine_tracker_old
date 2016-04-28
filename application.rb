# Shoes.app height: 150, width: 250 do
#   background rgb(240, 250, 208)
#   stack margin: 10 do
#     button "Start" do
#       @time = Time.now
#       @label.replace "Stop watch started at #@time"
#     end
#     button "Stop" do
#       @label.replace "Stopped, ", strong("#{Time.now - @time}"), " seconds elapsed."
#     end
#     @label = para "Press ", strong("start"), " to begin timing."
#   end
# end

Dir['./initializers/*.rb'].each{ |s| load s }

Dir['./resources/*.rb'].each{ |s| require s }

p "#{Project.site} #{Project.user} #{Project.password} #{Project.key}"
p Project.all(params: { key: ENV['API_KEY'] })
