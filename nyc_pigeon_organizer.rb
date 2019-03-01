
require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each{|k, v|
    v.invert.each {|names, info|
      names.each  {|x|
        pigeon_list.store(x, {})
      }
    }
  }
  pigeon_list.each {|name, keys|
    data.each {|k, v|
      pigeon_list[name].store(k, [])
      }
    }
  pigeon_list.each {|name, keys|
    data.each {|k, v|
      v.select{|key, values|
          if values.include?(name)
            pigeon_list[name][k]<< key.to_s
          end
      }
    }
  }
    return pigeon_list
end
