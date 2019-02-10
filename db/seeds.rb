#for localhost
AdminUser.create!(email: 'eugene@gmail.com', password: '01010101', password_confirmation: '01010101') if Rails.env.development?
#for Heroku
#AdminUser.create!(email: 'eugene@gmail.com', password: '01010101', password_confirmation: '01010101') if Rails.env.production?