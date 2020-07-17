<div class="container">
    <div class="row">
        <?php foreach($view_customer as $c): ?>
        <div class="customer_item">Name: <?=$c["name"]?></div>
        <div class="customer_item">Webseite: <?=$c["webseite"]?></div> 
        <div class="customer_item">E-Mail: <?=$c["email"]?></div>
        <div class="customer_item">Kommentar: <?=$c["kommentar"]?></div>
        <?php endforeach; ?>
        <div class="customer_item"><a href="?r=dashboard">Zurück</a></div>
    </div>
</div>
