<ion:partial view="header" />

<main>
	<div class="container">
		<div id="contactForm" class="pos-rel p10">

			<!--
				Success message
				Displayed if the form was successfuly validated
			-->
			<ion:form:contact:validation:success is="true">
				<div class="alert alert-block alert-success fade in">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<ion:lang key="form_contact_success_title" tag="h4" />
					<ion:lang key="form_contact_success_message" tag="p" />
				</div>
			</ion:form:contact:validation:success>

			<!--
				Error message
				Displayed if the form doesn't pass the validation
				the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php

			-->
			<ion:form:contact:validation:error is="true" >
				<div class="alert alert-block alert-error fade in">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<ion:lang key="form_contact_error_title" tag="h4" />
					<ion:lang key="form_contact_error_message" tag="p" />
				</div>
			</ion:form:contact:validation:error>

			<!--
				Form has no action because the same page will process the data.
				POST data are catched by the global Tagmanager and processed by the Tagmanager's library method 'prcoess_data'
				defined in : /themes/your_theme/libraries/Tagmanager/Contact.php
				as declared in the form config file : /themes/your_theme/config/forms.php
			-->
			<form class="form-horizontal" method="post" action="#contactForm">

				<!-- The form name must be set so the tags identify it -->
				<input type="hidden" name="form" value="contact" />
				<div class="form-main">
					<div class="control-group submit">
						<div class="controls">
							<button type="submit" class="btn btn-success"><ion:lang key="form_button_send" /></button>
						</div>
					</div>
					
					<!-- Input : Name -->
					<div class="control-group<ion:form:contact:error:name is="true"> error</ion:form:contact:error:name>">
						<label class="control-label" for="form_name"><ion:lang key="form_label_name" />*</label>
						<div class="controls">
							<input class="span4" name="name" type="text" id="form_name" placeholder="" value="<ion:form:contact:field:name />" />
							<ion:form:contact:error:name tag="span" class="help-inline" />
						</div>
					</div>

					<!-- Input : Email -->
					<div class="control-group<ion:form:contact:error:email is="true"> error</ion:form:contact:error:email>">
						<label class="control-label" for="email"><ion:lang key="form_label_email" />*</label>
						<div class="controls">
							<input class="span4" name="email" type="text" id="email" placeholder="" value="<ion:form:contact:field:email />" />
							<ion:form:contact:error:email tag="span" class="help-inline" />
						</div>
					</div>

					<input id="city" name="city" type="hidden" value="" />

					<!-- Input : Message -->
					<div class="control-group<ion:form:contact:error:message is="true"> error</ion:form:contact:error:message>">
						<label class="control-label" for="message"><ion:lang key="form_label_message" />*</label>
						<div class="controls">
							<input class="span4" name="message" type="text" placeholder="" value="<ion:form:contact:field:message />" />
							<ion:form:contact:error:message tag="span" class="help-inline" />
						</div>
					</div>
				</div>

				<!--
				   Input : I want to...
				   -->
				<div class="form-extend">
					<div class="control-group">
				 
						<!-- Fills again the user input in case of failed validation -->
						<input type="radio" name="budget" id="budget-contact-budget" value="<ion:lang key="form_label_budget_budget" />" class="left regular-radio" <ion:form:contact:radio:budget value="request a budget" /> />
						<label for="budget-contact-budget"></label>
						<label class="label-text">
							<ion:lang key="form_label_budget_budget" />
						</label>
				 
						<input type="radio" name="budget" id="budget-contact-info" value="<ion:lang key="form_label_budget_info" />" class="clear left regular-radio" <ion:form:contact:radio:budget value="more info" /> />
						<label for="budget-contact-info" ></label>
						<label class="label-text">
							<ion:lang key="form_label_budget_info" />
						</label>
						
						<input type="radio" name="budget" id="budget-contact-order" value="<ion:lang key="form_label_budget_order" />" class="clear left regular-radio" <ion:form:contact:radio:budget value="to do an order" /> />
						<label for="budget-contact-order" ></label>
						<label class="label-text">
							<ion:lang key="form_label_budget_order" />
						</label>
				 
						<ion:form:contact:error:budget tag="p" class="error" />
					</div>
				</div>
				
				<!--
				   Input : You heard about our company...
				   -->
				<div class="form-extend">
					<label class="label-text">M'has conegut:</label>
				 
					<div class="control-group form-extend">
				 
						<!-- Fills again the user input in case of failed validation -->
						<input type="radio" name="heard" id="heard-contact-friend" value="<ion:lang key="form_label_heard_friend" />" class="left regular-radio" <ion:form:contact:radio:heard value="through a friend" /> />
						<label for="heard-contact-friend"></label>
						<label class="label-text">
							<ion:lang key="form_label_heard_friend" />
						</label>
				 
						<input type="radio" name="heard" id="heard-contact-linkedin" value="<ion:lang key="form_label_heard_linkedin" />" class="clear left regular-radio" <ion:form:contact:radio:heard value="through linkedin" /> />
						<label for="heard-contact-linkedin" ></label>
						<label class="label-text">
							<ion:lang key="form_label_heard_linkedin" />
						</label>
				 
						<input type="radio" name="heard" id="heard-contact-google" value="<ion:lang key="form_label_heard_google" />" class="clear left regular-radio" <ion:form:contact:radio:heard value="google search" /> />
						<label for="heard-contact-google" ></label>
						<label class="label-text">
							<ion:lang key="form_label_heard_google" />
						</label>
				 
						<ion:form:contact:error:heard tag="p" class="error" />
					</div>
				</div>
				
				<div class="telf">
					<p>
						+34 <br />
						Barcelona
					</p>
				</div>
				
			</form>

			<script type="text/javascript">
				$( window ).on("load", function() {
					document.getElementById("city").value = "<ion:config key="form_antispam_key" />";
				})
			</script>

		</div>
		
		<div class="content-right">
			<div class="contact-image">
				<?php
					function callInstagram($url)
				    {
						$ch = curl_init();
						curl_setopt_array($ch, array(
						CURLOPT_URL => $url,
						CURLOPT_RETURNTRANSFER => true,
						CURLOPT_SSL_VERIFYPEER => false,
						CURLOPT_SSL_VERIFYHOST => 2
						));

						$result = curl_exec($ch);
						curl_close($ch);
						return $result;
				    }

				    $tag = 'color';
				    $client_id = "";
				    $access_token = "";
				    //$url = 'https://api.instagram.com/v1/users/31142070/media/recent?client_id='.$client_id;

				    /*
				    	Per aconseguir el token:
						https://instagram.com/oauth/authorize/?client_id=9a23504427994fe6a59663649e0e6e6f&redirect_uri=http://efonts.cat&response_type=token

						Més info: http://jelled.com/instagram/access-token

						Per fer canvis a l'api logar-se com efonts a instagram i anar a https://www.instagram.com/developer
				    */
				    $url = 'https://api.instagram.com/v1/users/31142070/media/recent?access_token='.$access_token;

				    $inst_stream = callInstagram($url);
				    $results = json_decode($inst_stream, true);

				    //Now parse through the $results array to display your results... 

					echo '<div class="slider">';

				    foreach($results['data'] as $item){
				    	$image_link = $item['images']['low_resolution']['url'];
				    		echo '<div><img src="'.$image_link.'" /></div>';
				    }

					echo '</div>';

				?>				
			</div>
		</div>
		
	</div>
</main>

<ion:partial view="footer" />
