resource "null_resource" "challen" {
    provisioner "local-exec" {
    
    command =  "echo 'Message: ${upper("Hello world im devops engineer")}' >challenge.txt"        
   
    }
  
}