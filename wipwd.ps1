function Log($a) {
	$textBox1.AppendText("$a `n")
}

function GetProfilePwd($a) {
	netsh wlan show profile name=$a key=clear | Select-String "Key Content\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | % {$textBox2.Text = $pass}
	return netsh wlan show profile name=$a key=clear | Out-String
}

function RefreshProfiles {
	$comboBox1.Items.Clear()
	netsh wlan show profiles | Select-String ":.*[a-zA-Z0-0-_]+" | % {"$_".split(":")[1].trim()} | % {$comboBox1.Items.Add("$_")}
	return netsh wlan show profiles | Out-String
}

$button1_Click = {
	Log(GetProfilePwd($comboBox1.selectedItem.ToString()))
}

$button2_Click = {
	Log(RefreshProfiles)
}

$wipwd_Load = {
	RefreshProfiles
}

. (Join-Path $PSScriptRoot 'wipwd.designer.ps1')

$wipwd.ShowDialog()