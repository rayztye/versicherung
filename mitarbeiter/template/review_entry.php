<div class="customer_item">
    <div class="customer_row">
        <div class="customer_item_header"><h1>Neue Rezensionen: <?=$unread?></h1></div>
        <?php foreach($ucustomer as $c): ?>
        <div class="name">Name: <?=$c["name"]?></div>
        <div class="web">Webseite: <?=$c["webseite"]?></div>
        <div class="mail">E-Mail: <?=$c["email"]?></div>
        <a href="?r=review/view&id=<?=$c['id']?>">Anzeigen</a>
        <br/>
        <br/>
        <br/>
        <?php endforeach; ?>
    </div>
    <div class="customer_row">
        <div class="customer_item_header"><h1>Gelesende Rezensionen: <?=$read?></h1></div>
        <?php foreach($customer as $y): ?>
        <div class="name">Name: <?=$y["name"]?></div>
        <div class="web">Webseite: <?=$y["webseite"]?></div>
        <div class="mail">E-Mail: <?=$y["email"]?></div>
        <a href="?r=review/view&id=<?=$y['id']?>">Anzeigen</a>
        <br/>
        <br/>
        <br/>
        <?php endforeach; ?>
    </div>
</div>