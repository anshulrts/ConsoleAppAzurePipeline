Write-Output "BusinessUnit is $BusinessUnit"
Write-Output "Company is $Company"
Write-Output "Environment is $Environment"
Write-Output "ServerType is $ServerType"
Write-Output "AWSRegion is $AWSRegion"
Write-Output "DBName is $DBName"
Write-Output "TimestampString is $TimestampString"
try {
        #$logObject = Get-CWLLogEvent -LogStreamName $logStreamName -LogGroupName $logGroupName -NextToken $nextMarker -Region $AWSRegion
    } catch {
        throw "Unable to get the CW log object for the above log group."
        Write-Host "##vso[task.setvariable variable=dbUpdaterFailed;isOutput=true]true"
    }