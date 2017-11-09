class UserMailer < ActionMailer::Base
  default from: 'no-reply@jungle.com'
  
   def order_confirmation(user, order)
    @order = order
    mail(to: user, subject: 'Welcome to My Awesome Site')
   end
  
end