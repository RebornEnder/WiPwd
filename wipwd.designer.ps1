[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$wipwd = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.ComboBox]$comboBox1 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$comboBox1 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$groupBox1.SuspendLayout()
$groupBox2.SuspendLayout()
$wipwd.SuspendLayout()
#
#comboBox1
#
$comboBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$comboBox1.FormattingEnabled = $true
$comboBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$comboBox1.Name = [System.String]'comboBox1'
$comboBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]178,[System.Int32]21))
$comboBox1.TabIndex = [System.Int32]0
$comboBox1.add_SelectedIndexChanged($comboBox1_SelectedIndexChanged)
#
#button1
#
$button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]226,[System.Int32]13))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$button1.TabIndex = [System.Int32]1
$button1.Text = [System.String]'Extract'
$button1.UseVisualStyleBackColor = $true
$button1.add_Click($button1_Click)
#
#groupBox1
#
$groupBox1.Controls.Add($textBox1)
$groupBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$groupBox1.ForeColor = [System.Drawing.Color]::White
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]41))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]259,[System.Int32]145))
$groupBox1.TabIndex = [System.Int32]2
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Logs'
#
#textBox1
#
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]19))
$textBox1.Multiline = $true
$textBox1.Name = [System.String]'textBox1'
$textBox1.ReadOnly = $true
$textBox1.ScrollBars = [System.Windows.Forms.ScrollBars]::Vertical
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]120))
$textBox1.TabIndex = [System.Int32]0
$textBox1.add_TextChanged($textBox1_TextChanged)
#
#button2
#
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]238)))
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]197,[System.Int32]13))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]23,[System.Int32]21))
$button2.TabIndex = [System.Int32]3
$button2.Text = [System.String]'🔄'
$button2.UseVisualStyleBackColor = $true
$button2.add_Click($button2_Click)
#
#textBox2
#
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]19))
$textBox2.Multiline = $true
$textBox2.Name = [System.String]'textBox2'
$textBox2.ReadOnly = $true
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]32))
$textBox2.TabIndex = [System.Int32]0
#
#groupBox2
#
$groupBox2.Controls.Add($textBox2)
$groupBox2.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$groupBox2.ForeColor = [System.Drawing.Color]::White
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]192))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]259,[System.Int32]57))
$groupBox2.TabIndex = [System.Int32]3
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Password'
#
#wipwd
#
$wipwd.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]39)),([System.Int32]([System.Byte][System.Byte]39)),([System.Int32]([System.Byte][System.Byte]39)))

$wipwd.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]284,[System.Int32]261))
$wipwd.Controls.Add($groupBox2)
$wipwd.Controls.Add($button2)
$wipwd.Controls.Add($groupBox1)
$wipwd.Controls.Add($button1)
$wipwd.Controls.Add($comboBox1)
$wipwd.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedToolWindow
$wipwd.Name = [System.String]'wipwd'
$wipwd.Text = [System.String]'wipwd'
$wipwd.add_Load($wipwd_Load)
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$wipwd.ResumeLayout($false)
Add-Member -InputObject $wipwd -Name comboBox1 -Value $comboBox1 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $wipwd -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
