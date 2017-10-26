

def stock_picker (values,pos = 0, max  = 0 ,id_min= 0 , id_max = 0 )
  
   if values.size == 1  
    return [id_min,id_max]
   end 
   start = values.shift
   m , id  = values
         .zip((1..values.size+1))
         .max_by do |x| x[0] end
   
   if (m - start) > max
     max = m-start
     id_min = pos
     id_max = id + pos
   end
   
   stock_picker(values,pos+1, max,id_min,id_max)
  
  end


stock_picker([1,2,3]) #[0, 2]
stock_picker([4,1,2,3]) #[1,3]
stock_picker([17,3,6,9,15,8,6,1,10]) #[1,4]
