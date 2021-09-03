$(document).ready(function() {
     
      //scambio div pagine manoscritto
      $(".pulsante").click(function (){
        $(".pagina1").toggle(1000);
        $(".pagina2").toggle(1000);
      });

    $(".button1").click(function() {  //Cambio testo pulsante
        if ($(this).text() == "Testo francese") { 
            $(this).text("Traduzione"); 
        } else { 
            $(this).text("Testo francese"); 
        }; 
    });

    $(".button2").click(function(){ //pulsante abbr ed expan
        $(".abbr").toggle();
        $(".expan").toggle();
    });

    $(".button3").click(function(){ //pulsante sic e corr
        $(".sic").toggle();
        $(".corr").toggle();
    });

    $(".button4").click(function(){ //pulsante del e gap
        $(".del").toggle();
        $(".gap").toggle();
    });

    $(".button5").click(function(){ //pulsante add
        $(".add").toggle();
    });

    $(".button6").click(function(){ //pulsante supplied
        $(".supplied").toggle();
    });

}); 