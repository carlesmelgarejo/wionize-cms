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
$lang['form_label_name'] = "Nom";
$lang['form_label_firstname'] = "Nom";
$lang['form_label_lastname'] = "Cognom";
$lang['form_label_subject'] = "Assumpte";
$lang['form_label_message'] = "Missatge";
$lang['form_label_form_message'] = "Missatge";
$lang['form_label_form_firstname'] = "Nom";

$lang['form_label_budget'] = "Perquè contacto amb tu: ";
$lang['form_label_heard_on'] = "Com t´he conegut: ";




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
$lang['mail_website_contact_message'] = "Un visitant ha deixat un missatge a través del formulari de contacte web.";
$lang['mail_website_contact_subject'] = "Missatge del formulari de contacte";

// Contact : Email to user
$lang['mail_user_contact_intro'] = "Estimat %s,";
$lang['mail_user_contact_message'] = "Gràcies pel teu missatge. <br/> Et respondrem ràpidament.";
$lang['mail_user_contact_subject'] = "Gràcies pel teu missatge a %s";

// Message about automatic message
$lang['mail_automatic_message_warning'] = "Aquest missatge es genera automàticament. Si us plau, no respondre.";


/*
|--------------------------------------------------------------------------
| Messages
| Success messages for contact / login / registration forms
| Declared as 'success' for each form in form setup : /config/ionize.php
|--------------------------------------------------------------------------
*/

$lang['form_alert_error_message'] = "Revisa el formulari, falta omplir algun camp ...";
$lang['form_alert_error_title'] = "Vaja, hi ha algun error.";
$lang['form_alert_success_message'] = "Tot correcte!";
$lang['form_alert_success_title'] = "Molt bé!";

$lang['form_contact_error_message'] = "Revisa el formulari, falta omplir algun camp ...";
$lang['form_contact_error_title'] = "Vaja, hi ha algun error.";
$lang['form_contact_success_message'] = "Gràcies pel teu missatge, et respondrem ràpidament!";
$lang['form_contact_success_title'] = "El teu missatge ha estat enviat amb èxit!";