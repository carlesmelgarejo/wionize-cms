<?php
/*
|--------------------------------------------------------------------------
| Labels
| To be used for form labels.
| Also used by Form Validation to display "human" name for each field in the errors messages.
| Declared as "label" for each fields of forms set in /config/ionize.php
|--------------------------------------------------------------------------
*/
$lang['form_label_email'] = 'Email';
$lang['form_label_name'] = 'Name';
$lang['form_label_firstname'] = 'First Name';
$lang['form_label_lastname'] = 'Last Name';
$lang['form_label_subject'] = 'Subject';
$lang['form_label_message'] = 'Message';
$lang['form_label_form_message'] = "Message";
$lang['form_label_form_firstname'] = "Name";

/*
|--------------------------------------------------------------------------
| Buttons
|--------------------------------------------------------------------------
*/
$lang['form_button_send'] = "Send";

/*
|--------------------------------------------------------------------------
| Emails
|--------------------------------------------------------------------------
*/

// Contact : Email to Admin
$lang['mail_website_contact_subject'] = "Message from Contact Form";
$lang['mail_website_contact_message'] = "One visitor let you a message through the website contact form.";

// Contact : Email to user
$lang['mail_user_contact_subject'] = "Thank you for your message to %s";
$lang['mail_user_contact_intro'] = "Dear %s,";
$lang['mail_user_contact_message'] = "Thank you for your message.<br/>We will answer you very quickly.";

// Message about automatic message
$lang['mail_automatic_message_warning'] = "This message was automatically generated. Please do not answer.";


/*
|--------------------------------------------------------------------------
| Messages
| Success messages for contact / login / registration forms
| Declared as 'success' for each form in form setup : /config/ionize.php
|--------------------------------------------------------------------------
*/

$lang['form_alert_success_title'] = 'Success !';
$lang['form_alert_success_message'] = 'Everything was OK !';
$lang['form_alert_error_title'] = 'Oups ! We got one error !';
$lang['form_alert_error_message'] = 'Check the form, something is perhaps missing....';

$lang['form_contact_error_title'] = 'Oups, we got an error.';
$lang['form_contact_error_message'] = 'Perhaps just some missing fields. Please check the form...';
$lang['form_contact_success_title'] = 'Your message was sent successfully !';
$lang['form_contact_success_message'] = 'Thank you for your message, we will answer you very quickly !';