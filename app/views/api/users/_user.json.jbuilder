json.extract! user, :id, :username

if user.admin? 
    json.extract! user, :admin
end
