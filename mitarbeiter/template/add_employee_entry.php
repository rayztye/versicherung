<form action="?r=Employees/Add" method="post">
    <input type="hidden" name="action" value="insert">
    <div class="add_employee_item">
        <div class="add_employee_row">
            <div class="employee_title">Personalnummer</div>
            <input class="input" name="Personalnummer" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Name</div>
            <input class="input" name="Name" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Vorname</div>
            <input class="input" name="Vorname" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Geburtsdatum</div>
            <input class="input" name="Geburtsdatum" type="date" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Telefon</div>
            <input class="input" name="Telefon" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Mobil</div>
            <input class="input" name="Mobil" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">E-Mail</div>
            <input class="input" name="E-Mail" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Raum</div>
            <input class="input" name="Raum" type="text" required>
        </div>
        <div class="add_employee_row">
            <div class="employee_title">Leiter</div>
            <div class="employee_radio">
                <input type="radio" class="checkmark" id="J" name="Ist_Leiter" value="J">
                <label for="J"> Ja</label> 
                <input type="radio" class="checkmark" id="N" name="Ist_Leiter" value="N">
                <label for="N"> Nein</label>
            </div>
        </div>

        <div class="add_employee_row">
            <div class="employee_title">Abteilung</div>
            <div class="employee_select">
                <select class="selector" name="Abteilung_ID">
                    <?php foreach( $abteilungen as $id=>$name ):?>
                    <option value="<?=$id?>"><?=$name?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
        <div class="add_employee_row">
            <div class="employee_title"><input type="submit" class="button" value="Speichern"></div>
        </div>
    </div>
</form>
