class CurrencyExchangesController < ApplicationController
  before_action :set_currency_exchange, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /currency_exchanges
  # GET /currency_exchanges.json
  def index
    @currency_exchange = CurrencyExchange.new
    @currency_exchanges = CurrencyExchange.order('created_at DESC')
  end

  # GET /currency_exchanges/1
  # GET /currency_exchanges/1.json
  def show
  end

  # GET /currency_exchanges/new
  def new
    @currency_exchange = CurrencyExchange.new
  end

  # GET /currency_exchanges/1/edit
  def edit
  end

  # POST /currency_exchanges
  # POST /currency_exchanges.json
  def create
    @currency_exchange = CurrencyExchange.new(currency_exchange_params)

    respond_to do |format|
      if @currency_exchange.save
        format.html { redirect_to currency_exchanges_path, notice: 'Currency exchange was successfully created.' }
        format.json { render :show, status: :created, location: @currency_exchange }
      else
        format.html { render :new }
        format.json { render json: @currency_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currency_exchanges/1
  # PATCH/PUT /currency_exchanges/1.json
  def update
    respond_to do |format|
      if @currency_exchange.update(currency_exchange_params)
        format.html { redirect_to @currency_exchange, notice: 'Currency exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @currency_exchange }
      else
        format.html { render :edit }
        format.json { render json: @currency_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currency_exchanges/1
  # DELETE /currency_exchanges/1.json
  def destroy
    @currency_exchange.destroy
    respond_to do |format|
      format.html { redirect_to currency_exchanges_url, notice: 'Currency exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency_exchange
      @currency_exchange = CurrencyExchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currency_exchange_params
      params.require(:currency_exchange).permit(:currency_rate)
    end
end
