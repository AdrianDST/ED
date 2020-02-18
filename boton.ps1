using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Pagina de subastas"
$Label.AutoSize = $True
$Form.MinimizeBox=$False
$Form.MaximizeBox=$True
$button = [Button] @{
 Text = 'Subasta1'
}
$button1 = [Button] @{
 Text = 'Subasta2'
 
}
$button2 = [Button] @{
 Text = 'Si'
 }
 $button3 = [Button] @{
 Text = 'No'
 }
 

$button.Location = New-Object System.Drawing.Point (35,100)
$button1.Location = New-Object System.Drawing.Point (140,100)
$button2.Location = New-Object System.Drawing.Point (140,100)
$button3.Location = New-Object System.Drawing.Point (30,100)


$button.add_Click{
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Subasta Patrocinadores,¿comprar?"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button2))
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button3))


}
$button1.add_Click{
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Subastas de personas,¿comprar?"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button2))
$Form.ShowDialog($form.Controls.Add($button3))

}
$button2.add_Click{
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Has Comprado"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog()


}
$button3.add_Click{
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "No has Comprado"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog()


}

$form.Controls.Add($button)
$form.Controls.Add($button1)
$Form.Controls.Add($Label)
$Form.ShowDialog()

