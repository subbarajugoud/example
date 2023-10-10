resource local_file First_TF_file {
    filename  = "Sample text"
    sensitive_content = "Welcome to My world"
    file_permission = "0700"
    directory_permission = "0700"
}
