require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  nameArray = []
  sendHash = {}
  
  data.each do |trait, dataHash|
    dataHash.each do |dataKey, dataArray|
      dataArray.each do |name|
        sendHash = sendHash.merge( {name => [(dataKey.to_s)] } )  #this overwrites all your previous names
        #binding.pry
      end
      binding.pry
      #nameArray += dataArray
    end
    #nameArray = nameArray.uniq
  end
  
  sendHash
end