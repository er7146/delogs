Log.create! \
  driver:        "1",
  reference_num: "123456",
  company:       "EOG",
  address:       "600 17 st.",
  suite_num:     "1000",
  city:          "Denver",
  zip_code:       80202 ,
  note:           "special instructions here",
  pick_up:    "1",
  delivery:     "1",
  received_by: "jhon"

Admin.create! username: "admin", password: "123", password_confirmation: "123"
