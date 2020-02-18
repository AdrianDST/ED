$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Pagina de subastas"
$Label.AutoSize = $True
$button = [Button] @{
 Text = 'Subasta1'
}
$button1 = [Button] @{
 Text = 'Subasta2'
 
}
$button.Location = New-Object System.Drawing.Point (35,100)
$button1.Location = New-Object System.Drawing.Point (85,100)
$button.add_Click{

$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Subasta Patrocinadores"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog()


}
$button1.add_Click{
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Subastas de personas"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog()


}

$form.Controls.Add($button)
$form.Controls.Add($button1)
$Form.Controls.Add($Label)
$Form.ShowDialog()

