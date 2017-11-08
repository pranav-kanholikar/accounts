json.extract! account, :id, :f_name, :l_name, :email, :confirm_email, :password, :age, :date, :gender, :created_at, :updated_at
json.url account_url(account, format: :json)
