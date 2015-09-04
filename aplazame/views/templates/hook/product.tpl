<!--<div class="widget-data-aplazame" data-type="{$data_type}"
    data-skin="{$data_skin}"
    data-amount="{$product_price}"
    data-currency="{$currency_iso}"
    data-country="{$country_iso}"
    data-locale="{$data_locale}">
</div>-->
<script type="text/javascript">
    function changeAplazameWidgetPrice(quantity){
        finalPrice = productPrice.toFixed(2).replace('.','');
        finalPrice *= quantity;
        document.querySelector('div.widget-data-aplazame').setAttribute('data-amount',finalPrice);
    }
    
    var quantity_element = document.getElementById({$quantity_wanted});
    var minus_button = document.querySelector({$minus_button});
    var plus_button = document.querySelector({$plus_button});
    
    quantity_element.onchange = function() {
        var elem = (typeof this.selectedIndex === "undefined" ? window.event.srcElement : this);
        var value = elem.value || elem.options[elem.selectedIndex].value;
        changeAplazameWidgetPrice(value);
    };
    
    minus_button.onclick = function() {
        console.log(select_element.value);
    };
    
    plus_button.onclick = function() {
        console.log(select_element.value);
    };
</script>