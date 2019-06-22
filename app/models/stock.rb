class Stock < ApplicationRecord
    
    @stock= IEX::Api::Client.new(publishable_token: 'pk_e54b86f67a9b4a79b05d7e490a0ed813')  
    
    def self.new_from_lookup(ticker_symbol)          
        looked_up_stock = @stock.quote(ticker_symbol)
#        print looked_up_stock
# #<IEX::Resources::Quote avg_total_volume=1593065 calculation_price="close" change=10.46 change_percent=0.00941 c
#hange_percent_s="+0.94%" close=1121.88 close_time=1561147200453 company_name="Alphabet, Inc." delayed_price=1121
#.67 delayed_price_time=1561146999511 extended_price=1122 extended_price_time=1561246598447 high=1124.11 iex_ask_
#price=nil iex_ask_size=nil iex_bid_price=nil iex_bid_size=nil iex_last_updated=nil iex_last_updated_t=nil iex_ma
#rket_percent=nil iex_realtime_price=nil iex_realtime_size=nil iex_volume=nil latest_price=1121.88 latest_source=
#"Close" latest_time="June 21, 2019" latest_update=1561147200453 latest_update_t=2019-06-21 20:00:00 +0000 latest
#_volume=1915797 low=1108.08 market_cap=778858777334 open=1109.24 open_time=1561123800462 pe_ratio=27.87 previous
#_close=1111.42 symbol="GOOG" week_52_high=1289.27 week_52_low=970.11 ytd_change=0.082107>

        new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.close)       
    end
end
