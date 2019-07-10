class InquiriesController < ApplicationController
    def new
        @inquiry = Inquiry.new
    end

    def create
        @inquiry = Inquiry.new(inquiry_params)
        if @inquiry.save
            ContactsMailer.general_message(@inquiry).deliver
            format.html { redirect_to root_path, notice: 'Inquiry was successfully sent!' }
            me
          else
            render :new
          end
    end

    private

    def inquiry_params
        params.require('inquiry').permit(:name, :email, :phone, :website, :budget, :description)
    end

end
