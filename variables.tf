//PROJECT
variable "google_project_iam_bindings" {
  type = list(object({
    unique               = number,
    project              = string,
    role                 = string,
    members              = list(string),
  }))
  description = "List of project iam members."
}

variable "google_project_iam_members" {
  type = list(object({
    unique               = number,
    project              = string,
    role                 = string,
    member               = string,
    
  }))
  description = "List of project iam members."
}

//STORAGE
variable "google_storage_bucket_iam_bindings" {
  type = list(object({
    unique               = number,
    bucket               = string,
    role                 = string,
    members              = list(string),
    
  }))
  description = "List of storage bucket iam bindings."
}

variable "google_storage_bucket_iam_members" {
  type = list(object({
    unique               = number,
    bucket               = string,
    role                 = string,
    member               = string,
    
  }))
  description = "List of storage bucket iam members."
}

//DATAPROC
variable "google_dataproc_cluster_iam_bindings" {
  type = list(object({
    unique               = number,
    project              = string,
    region               = string,
    cluster              = string,
    role                 = string,
    members              = list(string),
    
  }))
  description = "List of data proc iam bindings."
}

variable "google_dataproc_cluster_iam_members" {
  type = list(object({
    unique               = number,
    project              = string,
    region               = string,
    cluster              = string,
    role                 = string,
    member               = string,
    
  }))
  description = "List of data proc iam members."
}

//COMPUTE_INSTANCE
variable "google_compute_instance_iam_bindings" {
  type = list(object({
    unique               = number,
    project              = string,
    zone                 = string,
    instance_name        = string,
    role                 = string,
    members              = list(string),
    
  }))
  description = "List of compute instance iam bindings."
}

variable "google_compute_instance_iam_members" {
  type = list(object({
    unique               = number,
    project              = string,
    zone                 = string,
    instance_name        = string,
    role                 = string,
    member               = string,
    
  }))
  description = "List of compute instance iam members."
}

//SERVICE_ACCOUNT
variable "google_service_account_iam_bindings" {
  type = list(object({
    unique               = number,
    service_account_id   = string,
    role                 = string,
    members              = list(string),
    
  }))
  description = "List of service account iam bindings."
}

variable "google_service_account_iam_members" {
  type = list(object({
    unique               = number,
    service_account_id   = string,
    role                 = string,
    member               = string,
    
  }))
  description = "List of service account iam members."
}