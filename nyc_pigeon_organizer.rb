require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  nameArray = []
  sendHash = {}
  
  data.each do |trait, dataHash|
    dataHash.each do |dataKey, dataArray|
      dataArray.each do |name|
        if sendHash[name].has_key?(trait) == false
          sendHash = sendHash.merge( {name => { trait => [(dataKey.to_s)] } } )  
          #binding.pry
        else
          sendHash[name][trait] << dataKey.to_s  
          binding.pry
        end
        binding.pry
      end
      binding.pry
      #nameArray += dataArray
    end
    #nameArray = nameArray.uniq
  end
  
  sendHash
end