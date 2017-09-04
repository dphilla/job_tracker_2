class ContactsController < ApplicationController

  def index

  end

  def create
    @company = Company.find(params[:company_id])
    @contact = @company.contacts.new(contact_params)
    @contact.save
    redirect_to company_path(@company)
  end

private

  def contact_params
    params.require(:contact).permit(:name, :position, :email)
  end

end
