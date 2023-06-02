$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"
$Name = "RunAsPPLBoot"
$Type = "DWORD"
$Value = 2

Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value 