variable "region" {
  description = "Region for Service Bus"
  type = string
}

variable "project" {
  description = "project"
  type = string
}

variable "environment" {
  description = "environment For Name"
  type = string
}

variable "resource_group" {
  description = ""
  type = string
}

variable "queue_name" {
  description = ""
  type = set(string)
}

variable "topic_name" {
  description = ""
  type = set(string)
}

