<div class="container">
    <div class="row2">
        <?php foreach($view_customer as $c): ?>
        <div class="customer_item">Name: <?=$c["name"]?></div>
        <?php if( isset($c["webseite"]) ): ?>
        <div class="customer_item">Webseite: <?=$c["webseite"]?></div> 
            <?php else: ?>
        
        <?php endif ?>
        <div class="customer_item">E-Mail: <?=$c["email"]?></div>
        <div class="customer_item">Kommentar: <?=$c["kommentar"]?></div>
        <?php endforeach; ?>
        <div class="customer_item"><a href="?r=review">Zurück</a></div>
    </div>
</div>
