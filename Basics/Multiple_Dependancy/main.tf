resource local_file name1 {
  
  filename  = "Implicit.txt"
  content = "This is Random text string from MD folder : ${random_string.name2.result}"
}
resource random_string name2 {
  length  = 20
  
}
resource local_file name8 {
  
  filename  = "explicit.txt"
  content = "This is Random text string from MD folder : ${random_string.name2.result}"
  depends_on = [random_string.name2]
 
}

 output name {
  value       = random_string.name2.id
  
}