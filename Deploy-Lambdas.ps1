# CSV Path
$csvPath = "C:/path/aws_accounts.csv"

$terraformDir = "C:/path/Terra_teste/DB/"

$accounts = Import-Csv -Path $csvPath

foreach ($account in $accounts) {
    $tfvarsFileName = "account$($account.account_num).tfvars"
    $tfvarsFilePath = Join-Path -Path $terraformDir -ChildPath $tfvarsFileName

    $tfvarsContent = @"
aws_access_key_id = "$($account.aws_access_key_id)"
aws_secret_access_key = "$($account.aws_secret_access_key)"
role_arn = "$($account.role_arn)"
region = "$($account.region)"
lambda1_zip_path = "$($account.lambda1_zip_path)"
lambda2_zip_path = "$($account.lambda2_zip_path)"
lambda3_zip_path = "$($account.lambda3_zip_path)"
lambda4_zip_path = "$($account.lambda4_zip_path)"
lambda5_zip_path = "$($account.lambda5_zip_path)"
lambda6_zip_path = "$($account.lambda6_zip_path)"
lambda7_zip_path = "$($account.lambda7_zip_path)"
lambda8_zip_path = "$($account.lambda8_zip_path)"
lambda9_zip_path = "$($account.lambda9_zip_path)"
ARN_stla_teich_lambda_db = "$($account.ARNlambda_db)"
handler1 = "$($account.handler1)"
handler2 = "$($account.handler2)"
handler3 = "$($account.handler3)"
handler4 = "$($account.handler4)"
handler5 = "$($account.handler5)"
handler6 = "$($account.handler6)"
handler7 = "$($account.handler7)"
handler8 = "$($account.handler8)"
handler9 = "$($account.handler9)"
aft_rdk_custom_layer_arn = "$($account.aft_rdk_custom_layer_arn)"
"@

    $tfvarsContent | Out-File -FilePath $tfvarsFilePath -Encoding UTF8

    Write-Host "Deployment for account $($account.account_num) with file $tfvarsFilePath"

    if (Test-Path $tfvarsFilePath) {
        Write-Host "File $tfvarsFilePath exists. Executing Terraform apply..."
        Push-Location -Path $terraformDir
        terraform apply -auto-approve -var-file="$tfvarsFilePath"
        Pop-Location
    } else {
        Write-Host "Error: File $tfvarsFilePath not found."
    }
}

Write-Host "Deployment completed for all accounts."
