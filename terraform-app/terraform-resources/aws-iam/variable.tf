variable "name" {
  type        = string
  description = "Name of role"
}

variable "policy_json_path" {
  type        = string
  description = "Path to the JSON file containing IAM policies"
  default     = "./policy.json"
}

variable "policy_arns" {
  type        = list(string)
  description = "List of IAM policy ARNs"
}

variable "tags" {
  type        = map(string)
  description = "Tags of resource"
  default = {
    created_by = "terraform",
    managed_by = "devops"
  }
}
