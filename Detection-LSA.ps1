$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$Name1 = "RunAsPPL"
$Name2 = "RunAsPPLBoot"
$Type = "DWORD"
$Value1 = 1
$Value2 = 2

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name1 -ErrorAction Stop | Select-Object -ExpandProperty $Name1
    If ($Registry -eq $Value1){
        $RunasPPLBoot = Get-ItemProperty -Path $Path -Name $Name2 -ErrorAction Stop | Select-Object -ExpandProperty $Name2
        if($RunasPPLBoot -eq $Value2){
        Write-Output "Compliant"
        Exit 0
    }}
    elseIf ($Registry -eq $Value2){
        $RunasPPLBoot = Get-ItemProperty -Path $Path -Name $Name2 -ErrorAction Stop | Select-Object -ExpandProperty $Name2
        if($RunasPPLBoot -eq $Value2){
        Write-Output "Compliant"
        Exit 0
    }} 
    Write-Warning "Not Compliant"
    Exit 1
} 
Catch {
    Write-Warning "Not Compliant"
    Exit 1
}

else {
    Write-Output "Compliant"
    Exit 0}