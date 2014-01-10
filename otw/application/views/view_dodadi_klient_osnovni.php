
<html>
	<head>
		
		<meta http-equiv ="Content-Type" content = "text/html" charset ="UTF-8"/>
		
		<script type="text/javascript">			
			

			function test(form){
								
				var ck_name = /^[A-Za-z0-9 ]{3,20}$/;

				var errors = new Array();
				var ime_prezime = form.ime_prezime.value; 
				
				if(!ck_name.test(ime_prezime)){
					errors[errors.length] = "Името не е успешно валидирано. Мора да биде помеѓу 3-20 карактери, без специјални знаци";					
				}

				if (errors.length > 0) {
					  reportErrors(errors);
					  return false;
				}
				else{
					alert("Podatocite se uspesno validirani");
				}				
			}

			function reportErrors(errors){
				 var msg = "Please Enter Valide Data...\n";
				 for (var i = 0; i<errors.length; i++) {
					  var numError = i + 1;
					  msg += "\n" + numError + ". " + errors[i];
				 }
				 alert(msg);
			}
			
		</script>
		
	</head>

	<body>
		
		<?php 
		$ime_prezime=array(
				"name" => "ime_prezime",
				"id" => "ime_prezime",
				"value" => set_value("ime_prezime")
		);

		$den = array(
			"name" => "den",
			"id" => "den",
			"value" => set_value("den")		
		);		

		$mesec = array(
			"name" => "mesec",
			"id" => "mesec",
			"value" => set_value("mesec")
		);

		$godina = array(
			"name" => "godina",
			"id" => "godina",
			"value" => set_value("godina")
		);

		$adresa = array(
			"name" => "adresa",
			"id" => "adresa",
			"value" => set_value("adresa")
		);

		$majka = array(
			"name" => "majka",
			"id" => "majka",
			"value" => set_value("majka")
		);

		$zanimanje_m = array(
			"name" => "zanimanje_m",
			"id" => "zanimanje_m",
			"value" => set_value("zanimanje_m")
		);

		$vraboten_m = array(
			"name" => "vraboten_m",
			"id" => "vraboten_m",
			"value" => set_value("vraboten_m")	
		);

		$tel_m = array(
			"name" => "tel_m",
			"id" => "tel_m",
			"value" => set_value("tel_m")
		);
		
				
		$attributes = array('name' => 'form', 'id' => 'form', 'onsubmit' => 'return test(this);');
		
		echo form_open_multipart('', $attributes);
			?>
			<h3>Корисник</h3>	
		<?php 
			echo form_label("Име и презиме: ", "ime_prezime");
			echo form_input($ime_prezime)."<br>"."<br>";
			
			echo form_label("Датум на раѓање: ");
			echo form_dropdown('denovi', $denovi, 0)."	";
			echo form_dropdown('meseci', $meseci, 'Јануари')."	";
			echo form_dropdown('godini', $godini, '1960')."<br>"."<br>";
			
			echo form_label("Адреса: ", "adresa");
			echo form_input($adresa)."<br>"."<br>";
			
			echo form_label("Пол: ", "pol");
			echo form_dropdown('pol', $pol)."<br>"."<br>";
			echo form_submit('dodadiKlient', "Додади клиент");
			?>	
			
			<h3>Родители</h3>
			
		<?php echo form_close();?>
		
		
		
		
	</body>


</html>