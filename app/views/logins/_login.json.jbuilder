json.extract! login, :id, :f_name, :l_name, :email, :password, :date, :gender, :phn_no, :created_at, :updated_at
json.url login_url(login, format: :json)
