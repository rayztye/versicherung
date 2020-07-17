<form action="?r=Employees/Save" method="post">
    <div class="edit_employee_item">
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Personalnummer">Personalnummer</label></div>
            <input class="input" name="Personalnummer" type="text" value="<?=$employee['Personalnummer']?>">
        </div>
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Name">Name</label></div>
            <input class="input" name="Name" type="text" value="<?=$employee['Name']?>">
        </div>
        
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Vorname">Vorname</label></div>
            <input class="input" name="Vorname" type="text" value="<?=$employee['Vorname']?>">
        </div>
        
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Geburtsdatum">Geburtsdatum</label></div>
            <input class="input" name="Geburtsdatum" type="date" value="<?=$employee['Geburtsdatum']?>">
        </div>
        
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Telefon">Telefon</label></div>
            <input class="input" name="Telefon" type="text" value="<?=$employee['Telefon']?>">
        </div>
        
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Mobil">Mobil</label></div>
            <input class="input" name="Mobil" type="text" value="<?=$employee['Mobil']?>">
        </div>
        
        <div class="edit_employee_row">
            <div class="employee_title"><label for="E-Mail">E-Mail</label></div>
            <input class="input" name="E-Mail" type="text" value="<?=$employee['E-Mail']?>">
        </div>
        <div class="edit_employee_row">
            <div class="employee_title"><label for="Raum">Raum</label></div>
            <input class="input" name="Raum" type="text" value="<?=$employee['Raum']?>">
        </div>
        <div class="edit_employee_row">
            <div class="add_employee_title"><label for="Raum">Leiter</label></div>
            <div class="employee_input">
                <input type="radio" class="checkmark" <?=($employee['Ist_Leiter'] == 'J')?'checked':''?> id="J" name="Ist_Leiter" value="J">
                <label for="J"> Ja</label> 
                <input type="radio" class="checkmark" <?=($employee['Ist_Leiter'] == 'N')?'checked':''?> id="N" name="Ist_Leiter" value="N">
                <label for="N"> Nein</label>
            </div>
        </div>
        <div class="edit_employee_row">
            <div class="employee_title">Abteilung</div>
            <div class="employee_input">
                <select class="selector" name="Abteilung_ID">
                    <?php foreach( $abteilungen as $id=>$name ):?>
                    <option value="<?=$id?>" <?=($id == $employee['Abteilung_ID']? 'selected="selected"':'')?>><?=$name?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
        <div class="edit_employee_row">
            <div class=""><input class="button" name="save" value="Speichern" type="submit"></div>
            <div class=""><input class="button-delete" name="delete" value="Löschen" type="submit"></div>
            <div class=""><input name="realy_delete" type="radio">Wollen sie den Mitarbeiter wirklich löschen?</div>
            <input type="hidden" name="ID" value="<?=$employee['ID']?>">
        </div>
    </div>
</form>
