<div class="employee_item">
    
    <a class="edit-icon"href="?r=employees/Edit&ID=<?=$employee['ID']?>">
        <i class="far fa-edit"></i>
    </a>

        <div class="pers"><?=$employee['Personalnummer']?></div>
        <div class="name"><?=$employee['Name']?></div>
        <div class="fname"><?=$employee['Vorname']?></div>
        <div class="birthday"><?=$employee['Geburtsdatum']?></div>
        <div class="phone"><?=$employee['Telefon']?></div>
        <div class="mobile"><?=$employee['Mobil']?></div>
        <div class="mail"><?=$employee['E-Mail']?></div>
        <div class="room"><?=$employee['Raum']?></div>
        <div class="manager"><?=($employee['Ist_Leiter'] == 'J')?'Ja':'Nein'?></div>
        <div class="department"><?=$employee['Abteilung']?></div>
</div>

