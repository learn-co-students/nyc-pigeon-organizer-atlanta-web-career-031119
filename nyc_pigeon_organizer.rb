# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# def nyc_pigeon_organizer(data)
#   names_array = []
#   data.each do |attribute, values|
#     values.each do |key, names|
#       names.each do |name|
#         if !names_array.include?(name)
#           names_array << name
#         end
#       end
#     end
#   end
  
def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), pigeon_list|
    value.each do |attribute, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][key] ||= []
        pigeon_list[name][key] << attribute.to_s
      end
    end
  end
end