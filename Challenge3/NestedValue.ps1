function Get-NestedValue {
    param (
        [Parameter(Mandatory=$true)]
        [Hashtable]$Object,
        
        [Parameter(Mandatory=$true)]
        [string]$Key
    )

    $keyList = $Key -split '/'
    $currentData = $Object

    foreach ($key in $keyList) {
        if ($currentData.ContainsKey($key)) {
            $currentData = $currentData[$key]
        } else {
            return $null  # Key not found
        }
    }

    return $currentData
}