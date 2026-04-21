<?php

/*
|--------------------------------------------------------------------------
| Labels
| To be used for form labels.
| Also used by Form Validation to display "human" name for each field in the errors messages.
| Declared as "label" for each fields of forms set in /config/ionize.php
|--------------------------------------------------------------------------
*/
$lang['form_label_email'] = "Email";
$lang['form_label_name'] = "Nombre";
$lang['form_label_firstname'] = "Nombre";
$lang['form_label_lastname'] = "Apellido";
$lang['form_label_subject'] = "Asunto";
$lang['form_label_message'] = "Mensaje";
$lang['form_label_form_message'] = "Mensaje";
$lang['form_label_form_firstname'] = "Nombre";

/*
|--------------------------------------------------------------------------
| Buttons
|--------------------------------------------------------------------------
*/
$lang['form_button_send'] = "Enviar";

/*
|--------------------------------------------------------------------------
| Emails
|--------------------------------------------------------------------------
*/

// Contact : Email to Admin
$lang['mail_website_contact_message'] = "Un visitante ha dejado un mensaje a través del formulario de contacto web.";
$lang['mail_website_contact_subject'] = "Mensaje del formulario de contacto";

// Contact : Email to user
$lang['mail_user_contact_intro'] = "Estimado %s,";
$lang['mail_user_contact_message'] = "Gracias por tu mensaje. <br/> Te contestaremos rápidamente.";
$lang['mail_user_contact_subject'] = "Gracias por tu mensaje a %s";

// Message about automatic message
$lang['mail_automatic_message_warning'] = "Este mensaje se genera automáticamente. Por favor, no responder.";


/*
|--------------------------------------------------------------------------
| Messages
| Success messages for contact / login / registration forms
| Declared as 'success' for each form in form setup : /config/ionize.php
|--------------------------------------------------------------------------
*/

$lang['form_alert_error_message'] = "Revisa el formulario, falta rellenar algún campo ...";
$lang['form_alert_error_title'] = "Vaya, hay algún error.";
$lang['form_alert_success_message'] = "Todo correcto!";
$lang['form_alert_success_title'] = "Muy bien!";

$lang['form_contact_error_message'] = "Revisa el formulario, falta rellenar algún campo ...";
$lang['form_contact_error_title'] = "Vaya, hay algún error.";
$lang['form_contact_success_message'] = "Gracias por tu mensaje, te contestaremos rápidamente!";
$lang['form_contact_success_title'] = "Tu mensaje ha sido enviado con éxito!";
