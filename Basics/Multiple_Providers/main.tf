resource local_file name5 {
  content = " This is a text file sample"
  filename = "Samlpe Multiple variables"
}

resource random_string name {
  length  = 20
 
}
output name1 {
  value       = random_string.name.result
}

