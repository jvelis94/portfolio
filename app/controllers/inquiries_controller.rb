class InquiriesController < ApplicationController
    def new
        @inquiry = Inquiry.new
    end

    def create
        @inquiry = Inquiry.new(inquiry_params)
        @inquiry.save
        redirect_to root_path
    end

    private

    def inquiry_params
        params.require('inquiry').permit(:name, :email, :phone, :website, :budget, :description)
    end

end
