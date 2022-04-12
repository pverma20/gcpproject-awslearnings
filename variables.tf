
// Variables needed for this project

variable "project_name" {
type        = string
description = "The name of the project that will be assigned in GCP"
default = "onemoreproject"
}

/* variable "project_folder" {
type        = string
description = "The folder ID the project will live in"
default = "55852744980"
#Acxiom Project Folder
} */

/* variable "org_id" {
type = string
default = "organizations/1013948545939"
}  */

variable "bill-to" {
type        = string
description = "A label that we can use in the project"
}

variable "cost-center" {
type        = string
description = "A label that we can use in the project"
}

variable "environment" {
type        = string
description = "A label that we can use in the project"
}

variable "business-owner" {
type        = string
description = "A label that we can use in the project"
}

variable "product-owner" {
type        = string
description = "A label that we can use in the project"
}

variable "operations-owner" {
type        = string
description = "A label that we can use in the project"
}

 /* variable "it-tf-deploy-creds" {
 } */


 variable "google_folder" {
     type = string
     description = "Folder name and path"
 }

 variable "parent" {
     type=string
     default = "organizations/1013948545939"
   
 }