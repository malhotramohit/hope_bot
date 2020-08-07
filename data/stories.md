## happy path
* greet
  - utter_greet
* mood_great
  - utter_cheer_up
* affirm
  - utter_okay
  - utter_mother_anything_else
* deny
  - utter_mother_med_add_edit_pres

## unwell path 1
* greet
  - utter_greet
* preg_mother_unwell
  - utter_preg_unwell
* preg_mother_call_husband
   - utter_mother_call_husband
* preg_mother_emergency
    - utter_emergency
    - utter_takecare

## book appointment path 1
* greet
  - utter_greet
* preg_mother_book_appointment
  - utter_with_whom
* preg_mother_gynae_name
  - utter_mother_what_date
* preg_mother_schedule_tomorrow
   - utter_mother_what_time
* preg_mother_schedule_time
   - utter_gynae_confirmation
* affirm
   - utter_gynae_confirmed
   - utter_gynae_appointment_summary
   - utter_mother_anything_else
* gratitude
   - utter_welcome
   - utter_mother_anything_else
* preg_mother_emergency
    - utter_emergency
    - utter_takecare

## medications enquiry
* greet
  - utter_greet
* preg_mother_med_enquiry
  - utter_mother_med_prescriptions
  - utter_mother_med_add_edit_pres
* affirm
  - utter_okay
  - utter_mother_anything_else
* deny
  - utter_okay
  - utter_mother_anything_else

## say goodbye
* goodbye
  - utter_goodbye

## bot challenge
* bot_challenge
  - utter_iamabot

## Who created you
* bot_who_created_you
  - utter_who_created_you
