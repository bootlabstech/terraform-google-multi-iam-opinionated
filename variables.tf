terraform {
  experiments = [module_variable_optional_attrs]
}

//PROJECT
variable "google_project_iam_bindings" {
  type = list(object({
    unique               = number,
    project              = string,
    role                 = string,
    members              = list(string),
    # condition            = optional(object({
    #     title       = string,
    #     expression  = string,
    #     description = optional(string)
    # }))
  }))
  description = "List of project iam members."
  default     = []
}

variable "google_project_iam_members" {
  type = list(object({
    unique               = number,
    project              = string,
    role                 = string,
    member               = string,
    # condition            = optional(object({
    #     title       = string,
    #     expression  = string,
    #     description = optional(string)
    # }))
  }))
  description = "List of project iam members."
  default     = []
}

//STORAGE
variable "google_storage_bucket_iam_bindings" {
  type = list(object({
    unique               = number,
    bucket               = string,
    role                 = string,
    members              = list(string),
    # condition            = optional(object({
    #     title       = string,
    #     expression  = string,
    #     description = optional(string)
    # }))
  }))
  description = "List of storage bucket iam bindings."
  default     = []
}

variable "google_storage_bucket_iam_members" {
  type = list(object({
    unique               = number,
    bucket               = string,
    role                 = string,
    member               = string,
    # condition            = optional(object({
    #     title       = string,
    #     expression  = string,
    #     description = optional(string)
    # }))
  }))
  description = "List of storage bucket iam members."
  default     = []
}