using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Subastas de patrocinadores y personas"
$Label.AutoSize = $True
$Form.MinimizeBox = $False
$Form.MaximizeBox = $True

$button1 = [Button] @{
 Text = 'Sub.Patrocinadores'
 
}
$button2 = [Button] @{
 Text = 'Sub.Personas'
 
}
$button3 = [Button] @{
 Text = 'Si'
 
}

$button4 = [Button] @{
 Text = 'Si'
 
}
$button5 = [Button] @{
 Text = 'No'
 
}

$button1.Location = New-Object System.Drawing.Point (50,200)
$button2.Location = New-Object System.Drawing.Point (150,200)
$button3.Location = New-Object System.Drawing.Point (20,100)
$button4.Location = New-Object System.Drawing.Point (100,100)
$button5.Location = New-Object System.Drawing.Point (100,100)
$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location = New-Object System.Drawing.Size(20,220)
$TextBox.Size = New-Object System.Drawing.Size(260,20)

$Subasta1 = New-Object System.Windows.Forms.TextBox
$Subasta1.Location = New-Object System.Drawing.Size(20,220)
$Subasta1.Size = New-Object System.Drawing.Size(260,20)




$button1.add_Click{

$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label

$Label.Text = "¿Quiere comprar en la subasta de patrocinadores?"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button3))
$Form.ShowDialog($form.Controls.Add($button5))



}

$button2.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label

$Label.Text = "¿Quieres comprar en subasta de personas"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($Form.Controls.Add($button4))
$Form.ShowDialog($Form.Controls.Add($button5))




}

$button3.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Escriba un objeto"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$Subasta1.Text;Start-Process https://www.elcorteingles.es/electronica/search/?s=$Var;}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($Subasta1))


}
$button4.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Escriba un objeto"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$Subasta1.Text;Start-Process https://www.milanuncios.com/anuncios/$Var.htm?fromSearch=1;}})

$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($Subasta1))


}
$button5.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Buscar objeto antiguo"
taskkill /F /IM PowerShell_ISE.exe



}


$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)

$Form.ShowDialog()
