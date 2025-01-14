#   Copyright 2021 Google LLC
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
variable "project_id" {
  type        = string
  description = "Project ID"
}

variable "function_name" {
  type        = string
  description = "Cloud Function name"
}

variable "pubsub_topic" {
  type        = string
  description = "Pub/Sub topic (projects/project-id/topics/topic-id)"
}

variable "region" {
  type        = string
  description = "Project ID"

  default = "europe-west1"
}

variable "secret_id" {
  type        = string
  description = "Secret Manager secret ID"

  default = ""
}

variable "config_file" {
  type        = string
  description = "Configuration file"

  default = "config.yaml"
}

variable "service_account" {
  type        = string
  description = "Service account name"

  default = ""
}

variable "bucket_name" {
  type        = string
  description = "Bucket for storing the Cloud Function"

  default = "cf-pubsub2inbox"
}

variable "function_timeout" {
  type        = number
  description = "Cloud Function timeout (maximum 540 seconds)"
  default     = 60
}
