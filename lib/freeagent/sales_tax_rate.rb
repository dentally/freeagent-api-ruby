module FreeAgent
  class SalesTaxRate < Resource
    resource :sales_tax_rate

    attr_accessor :percentage, :band

    def self.for(country, date = Date.today)
      params = { country: country, date: date.to_s }
      response = FreeAgent.client.get("ec_moss/sales_tax_rates", params)
      response[endpoint[:plural]].collect{ |r| self.new(r) }
    end
  end
end
