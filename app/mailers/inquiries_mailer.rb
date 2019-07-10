class InquiriesMailer < ActionMailer::Base
    default from: "joelvelis94@gmail.com"
  
  def general_message
    mail( to: "joelvelis94@gmail.com", subject: "You have a new inquiry from your website")
  end
end