require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  sendHash = {}
  
  data.each do |trait, dataHash|
    dataHash.each do |dataKey, dataArray|
      dataArray.each do |name|

        if sendHash.has_key?(name) == false
          sendHash = sendHash.merge( name => {} )
        end

        #binding.pry
        if sendHash["#{name}"].has_key?(trait) == false 
          sendHash = sendHash["#{name}"].merge(sendHash["#{name}"].merge( { trait => [(dataKey.to_s)] } )  
          binding.pry
        else
          sendHash["#{name}"][trait] << dataKey.to_s  
          #binding.pry
        end
        #binding.pry
      end
    end
  binding.pry
  end
  sendHash
end