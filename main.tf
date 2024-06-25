provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  region     = var.region
  assume_role {
    role_arn = var.role_arn
  }
}

resource "aws_lambda_function" "lambda1" {
  function_name = "db_name"
  handler       = var.handler1
  runtime       = "python3.8"
  role          = var.ARN_lambda_db
  filename      = var.lambda1_zip_path
  source_code_hash = filebase64sha256(var.lambda1_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda2" {
  function_name = "db_engine_versions"
  handler       = var.handler2
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda2_zip_path
  source_code_hash = filebase64sha256(var.lambda2_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda3" {
  function_name = "db_storage_requirements"
  handler       = var.handler3
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda3_zip_path
  source_code_hash = filebase64sha256(var.lambda3_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda4" {
  function_name = "db_networking"
  handler       = var.handler4
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda4_zip_path
  source_code_hash = filebase64sha256(var.lambda4_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda5" {
  function_name = "db_snapshots"
  handler       = var.handler5
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda5_zip_path
  source_code_hash = filebase64sha256(var.lambda5_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda6" {
  function_name = "db_backups_encryption"
  handler       = var.handler6
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda6_zip_path
  source_code_hash = filebase64sha256(var.lambda6_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda7" {
  function_name = "db_auto_upgrade"
  handler       = var.handler7
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda7_zip_path
  source_code_hash = filebase64sha256(var.lambda7_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda8" {
  function_name = "db_deletion_protection"
  handler       = var.handler8
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda8_zip_path
  source_code_hash = filebase64sha256(var.lambda8_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}

resource "aws_lambda_function" "lambda9" {
  function_name = "db_az"
  handler       = var.handler9
  runtime       = "python3.8"
  role          = var.arn_lambda_db
  filename      = var.lambda9_zip_path
  source_code_hash = filebase64sha256(var.lambda9_zip_path)
  layers = [var.aft_rdk_custom_layer_arn]
}
