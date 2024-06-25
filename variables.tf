variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "role_arn" {
  description = "ARN of the IAM role that Lambda will assume"
  type        = string
}

variable "region" {
  description = "AWS region where the resources will be deployed"
  type        = string
}

variable "lambda1_zip_path" {
  description = "Path to the ZIP file for Lambda function 1"
  type        = string
}

variable "lambda2_zip_path" {
  description = "Path to the ZIP file for Lambda function 2"
  type        = string
}

variable "lambda3_zip_path" {
  description = "Path to the ZIP file for Lambda function 4"
  type        = string
}
variable "lambda4_zip_path" {
  description = "Path to the ZIP file for Lambda function 5"
  type        = string
}
variable "lambda5_zip_path" {
  description = "Path to the ZIP file for Lambda function 6"
  type        = string
}
variable "lambda6_zip_path" {
  description = "Path to the ZIP file for Lambda function 7"
  type        = string
}
variable "lambda7_zip_path" {
  description = "Path to the ZIP file for Lambda function 8"
  type        = string
}
variable "lambda8_zip_path" {
  description = "Path to the ZIP file for Lambda function 9"
  type        = string
}
variable "lambda9_zip_path" {
  description = "Path to the ZIP file for Lambda function 10"
  type        = string
}

variable "ARN_stla_teich_lambda_db" {
  description = "arn"
  type        = string
}

variable "handler1" {
  description = "handler_name"
  type        = string
}
variable "handler2" {
  description = "handler_name"
  type        = string
}
variable "handler3" {
  description = "handler_name"
  type        = string
}
variable "handler4" {
  description = "handler_name"
  type        = string
}
variable "handler5" {
  description = "handler_name"
  type        = string
}
variable "handler6" {
  description = "handler_name"
  type        = string
}
variable "handler7" {
  description = "handler_name"
  type        = string
}
variable "handler8" {
  description = "handler_name"
  type        = string
}
variable "handler9" {
  description = "handler_name"
  type        = string
}

variable "aft_rdk_custom_layer_arn" {
  description = "ARN for the aft-rdk-custom layer version 1"
  type        = string
}
