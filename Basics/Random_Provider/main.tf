resource random_integer rint {
  min = 50
  max = 70

  }

  resource random_string rstring {
    length  = 20
     }
     output name2 {
         value       = random_string.rstring.result
       
     }
     
  
output name1 {
  value       = random_integer.rint.result
 
}

