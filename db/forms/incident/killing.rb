killing_subform_fields = [
  Field.new({"name" => "violation_killing_boys",
             "type" => "numeric_field",
             "display_name_all" => "Number of victims: boys",
             "autosum_group" => "killing_number_of_victims"
            }),
  Field.new({"name" => "violation_killing_girls",
             "type" => "numeric_field",
             "display_name_all" => "Number of victims: girls",
             "autosum_group" => "killing_number_of_victims"
            }),
  Field.new({"name" => "violation_killing_unknown",
             "type" => "numeric_field",
             "display_name_all" => "Number of victims: unknown",
             "autosum_group" => "killing_number_of_victims"
            }),
  Field.new({"name" => "violation_killing_total",
             "type" => "numeric_field",
             "display_name_all" => "Number of total victims",
             "autosum_total" => true,
             "autosum_group" => "killing_number_of_victims"
            }),
  Field.new({"name" => "kill_method",
             "type" => "select_box",
             "display_name_all" => "Method",
             "option_strings_text_all" =>
                                    ["Victim Activated",
                                     "Non-Victim Activated",
                                     "Summary"].join("\n")
            }),
  Field.new({"name" => "kill_cause_of_death",
             "type" => "select_box",
             "display_name_all" => "Cause",
             "option_strings_text_all" =>
                                    ["IED",
                                     "IED - Command Activated",
                                     "UXO/ERW",
                                     "Landmines",
                                     "Cluster Munitions",
                                     "Shooting",
                                     "Artillery - Shelling/Mortar Fire",
                                     "Artillery - Cluster Munitions",
                                     "Aerial Bombardment",
                                     "White Weapon Use",
                                     "Gas",
                                     "Suicide Attack Victim",
                                     "Perpetrator of Suicide Attack",
                                     "Cruel and Inhumane Treatment",
                                     "Summary and Arbitrary Execution/ Extra Judicial Killing"].join("\n")
            }),
Field.new({"name" => "kill_cause_of_details",
             "type" => "text_field",
             "display_name_all" => "Details"
            }),
  Field.new({"name" => "circumstances_of_killing",
             "type" => "select_box",
             "display_name_all" => "Circumstances",
             "option_strings_text_all" =>
                                    ["Direct Attack",
                                     "Indiscriminate Attack",
                                     "Willful Killing etc...",
                                     "Impossible to Determine"].join("\n")
            }),
  Field.new({"name" => "consequences_of_killing",
             "type" => "select_box",
             "display_name_all" => "Consequences",
             "option_strings_text_all" =>
                                    ["Killing",
                                     "Permanent Disability",
                                     "Serious Injury",
                                     "Other"].join("\n")
            }),
  Field.new({"name" => "context_of_killing",
             "type" => "select_box",
             "display_name_all" => "Context",
             "option_strings_text_all" =>
                                    ["Weapon Used By The Child",
                                     "Weapon Used Against The Child"].join("\n")
            }),
  Field.new({"name" => "mine_incident_yes_no",
             "type" => "radio_button",
             "display_name_all" => "Mine Incident",
             "option_strings_text_all" => ["Yes", "No"].join("\n")
            }),
  Field.new({"name" => "kill_participant",
             "type" => "select_box",
             "display_name_all" => "Was the victim directly participating in hostilities at the time of the violation?",
             "option_strings_text_all" =>
                                    ["Yes",
                                     "No",
                                     "Unknown"].join("\n")
            }),
  Field.new({"name" => "kill_abduction",
             "type" => "select_box",
             "display_name_all" => "Did the violation occur during or as a direct result of abduction?",
             "option_strings_text_all" =>
                                    ["Yes",
                                     "No",
                                     "Unknown"].join("\n")
            }),
  # Verification fields
  Field.new({"name" => "verification_section",
             "type" => "separator",
             "display_name_all" => "Verification"
            }),
  Field.new({"name" => "verifier_id_code",
             "type" => "text_field",
             "display_name_all" => "Verifier"
            }),
  Field.new({"name" => "verification_decision_date",
             "type" => "date_field",
             "display_name_all" => "Verification Decision Date"
            }),
  Field.new({"name" => "verified",
             "type" => "select_box",
             "display_name_all" => "Verification Status",
             "selected_value" => "Pending",
             "option_strings_text_all" =>
                                    ["Verified",
                                     "Unverified",
                                     "Pending",
                                     "Falsely Attributed",
                                     "Rejected"].join("\n")
            }),
  Field.new({"name" => "verification_source_weight",
             "type" => "select_box",
             "display_name_all" => "Has the information been received from a primary and reliable source?",
             "option_strings_text_all" =>
                                    ["Yes, from a credible Primary Source who witnessed the incident",
                                     "Yes, from a credible Primary Source who did not witness the incident",
                                     "No, but there is sufficient supporting documentation of the incident",
                                     "No, all the information is from a Secondary Source(s)",
                                     "No, the Primary Source information is deemed insufficient or not credible"].join("\n")
            }),
  Field.new({"name" => "un_eyewitness",
             "type" => "radio_button",
             "display_name_all" => "Was the incident witnessed by UN staff or other MRM-trained affiliates?",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "verification_info_consistent",
             "type" => "radio_button",
             "display_name_all" => "Is the information consistent across various independent sources?",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "verification_info_credibility",
             "type" => "radio_button",
             "display_name_all" => "Has the veracity of the allegations been deemed credible using reasonable and sound judgement of trained and reliable monitors?",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "reason_non_verification",
             "type" => "select_box",
             "display_name_all" => "If not verified, why?",
             "option_strings_text_all" =>
                                    ["Unwilling Sources",
                                     "Security Constraints",
                                     "Resource Constraints",
                                     "Contradictory Information",
                                     "Pending Further Monitoring",
                                     "Other"].join("\n")
            }),
  Field.new({"name" => "verification_decision_description",
             "type" => "text_field",
             "display_name_all" => "Notes on Verification Decision"
            }),
  Field.new({"name" => "CTFMR_verified",
             "type" => "radio_button",
             "display_name_all" => "Verified by CTFMR",
             "option_strings_text_all" => "Yes\nNo"
            }),
  Field.new({"name" => "verification_date_CTFMR",
             "type" => "date_field",
             "display_name_all" => "Date verified by CTFMR"
            })
]

killing_subform_section = FormSection.create_or_update_form_section({
  "visible" => false,
  "is_nested" => true,
  :order_form_group => 40,
  :order => 10,
  :order_subform => 1,
  :unique_id => "killing",
  :parent_form=>"incident",
  "editable" => true,
  :fields => killing_subform_fields,
  :perm_enabled => false,
  :perm_visible => false,
  "name_all" => "Nested Killing Subform",
  "description_all" => "Nested Killing Subform",
  :initial_subforms => 1,
  "collapsed_fields" => ["kill_cause_of_death"]
})

killing_fields = [
  Field.new({"name" => "killing",
             "type" => "subform", "editable" => true,
             "subform_section_id" => killing_subform_section.unique_id,
             "display_name_all" => "Killing"
            })
]

FormSection.create_or_update_form_section({
  :unique_id => "killing_violation_wrapper",
  :parent_form=>"incident",
  "visible" => true,
  :order_form_group => 40,
  :order => 10,
  :order_subform => 0,
  :form_group_keyed => true,
  :form_group_name => "Violations",
  "editable" => true,
  :fields => killing_fields,
  :perm_enabled => true,
  "name_all" => "Killing",
  "description_all" => "Killing"
})
