# frozen_string_literal: true

class ContractsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_contract, only: [:show, :edit, :update, :destroy]


  def index
    @contracts = Contract.all
   # redirect_to categories_path	
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
    # 3.times do
    #   @publisher.books.build
    # end
  end

  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      redirect_to @contract, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    if @contract.update(contract_params)
      redirect_to @contract, notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:name, :start_time, :end_time)
  end

end
