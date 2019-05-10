require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  sendHash = {}
  
  data.each do |trait, dataHash|
    dataHash.each do |dataKey, dataArray|
      dataArray.each do |name|
        #binding.pry
        if sendHash.has_key?(name) == false
          #sendHash = sendHash.merge( {name => { trait => [(dataKey.to_s)] } } )  
          sendHash = sendHash.merge( name => {} )
        end
        binding.pry
        if sendHash["#{name}"].has_key?(trait) == false 
          
        else
          sendHash[name][trait] << dataKey.to_s  
          #binding.pry
        end
        #binding.pry
      end
      #nameArray += dataArray
    end
    #nameArray = nameArray.uniq
  end
  binding.pry
  sendHash
end