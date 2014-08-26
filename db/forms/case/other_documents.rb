other_documents_fields = [
    Field.new({"name" => "upload_document",
              "type" => "document_upload_box", "editable" => false,
              "display_name_all" => "Other Document"
              }),
    Field.new({"name" => "document_description",
              "type" => "text_field",
              "display_name_all" => "Document Description"
      })
]

FormSection.create_or_update_form_section({
  :unique_id => "other_documents",
  :parent_form=>"case",
  "visible" => true,
  :order_form_group => 141,
  :order => 11,
  :order_subform_ => 0,
  :fields => other_documents_fields,
  :perm_visible => true,
  "editable" => false,
  "name_all" => "Other Documents",
  "description_all" => "Other Documents",
  "form_group_name" => "Other Documents"
})