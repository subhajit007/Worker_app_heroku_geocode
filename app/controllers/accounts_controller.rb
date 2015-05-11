class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def index
    @accounts = Account.all
  end

  def create
    account = Account.new(params.require(:account).permit(:name, :zipcode))
        account.save
        GeoloateAccountJob.perform_later(account)
        redirect_to accounts_path
    end

end

  #   respond_to do |format|
  #     if @account.save
  #       format.html { redirect_to @account, notice: 'Location was successfully created.' }
  #       format.json { render :show, status: :created, account: @acount }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @account.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end



