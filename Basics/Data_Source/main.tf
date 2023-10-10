data local_file name{
  filename = "Sampletext.txt"
}
output name1 {
  value       = data.local_file.name.content
  
}
