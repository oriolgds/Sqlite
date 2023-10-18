

$addPath = 'C:\Users\OriolGinerDíaz\Documents\sqlite-tools-win32-x86-3430200\sqlite-tools-win32-x86-3430200\'

# Encode the path
$encodedPath = [System.Web.HttpUtility]::UrlEncode($addPath)

# Decode the encoded path
$decodedPath = [System.Web.HttpUtility]::UrlDecode($encodedPath)

$arrPath = $env:Path -split ';' | Where-Object { $_ -ne $decodedPath }

# Encode the path again before adding it to the environment variable
$encodedPath = [System.Web.HttpUtility]::UrlEncode($decodedPath)

$env:Path = ($arrPath + $encodedPath) -join ';'

$env:Path -split ';'