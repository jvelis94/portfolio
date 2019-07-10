class InquiriesController < ApplicationController
    def new
        @inquiry = Inquiry.new
    end

    def create
        @inquiry = Inquiry.new(inquiry_params)
        if @inquiry.save
            InquiriesMailer.general_message(@inquiry).deliver
            respond_to do |format|
                format.html { redirect_to root_path, notice: 'Inquiry was successfully sent!' }
            end
          else
            render :new
          end
    end

    private

    def inquiry_params
        params.require('inquiry').permit(:name, :email, :phone, :website, :budget, :description)
    end

end
