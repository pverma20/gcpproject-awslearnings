resource "random_id" "id_suffix" {
  byte_length = 2
  prefix      = var.project_name
}


 resource "google_folder" "department1" {
  display_name = "Department1"
  parent       = var.parent
  }


resource "google_project" "project" {
  name            = var.project_name
  project_id      = format ("%s-%s", "aws", random_id.id_suffix.hex)
  #billing_account = var.billing_account
  org_id          = "1013948545939"
  #folder_id       = var.project_folder
  #folder_id           = google_folder.this.id
 

#if need to create subfolder under main folder 
/* resource "google_folder" "sub_folder" {
  parent       = google_folder.department1.id
  display_name = "var.display-name-subaccount"
} */

/* #logging and monitoring
resource "google_folder" "logging_folder" {
  parent       = google_folder.this.id
  display_name = "Logging and Monitoring"
} */
  
  labels = {
    bill-to = var.bill-to
    cost-center = var.cost-center
    environment = var.environment
    business-owner = var.business-owner
    product-owner = var.product-owner
    operations-owner = var.operations-owner
    }
}