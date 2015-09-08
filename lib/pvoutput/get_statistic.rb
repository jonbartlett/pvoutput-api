require 'csv'
require 'rest-client'

module PVOutput

  class GetStatistic

    attr_reader :energy_generated            # number watt hours 246800
    attr_reader :energy_exported             # number watt hours 246800
    attr_reader :average_generation          # number watt hours 8226
    attr_reader :minimum_generation          # number watt hours 2000
    attr_reader :maximum_generation          # number watt hours 11400
    attr_reader :average_efficiency          # number kWh/kW 3.358
    attr_reader :outputs                     # number - 27
    attr_reader :actual_date_from            # yyyymmdd 2015-06-2420100901
    attr_reader :actual_date_to              # yyyymmdd 2015-06-2420100927
    attr_reader :record_efficiency           # number kWh/kW 4.653
    attr_reader :record_date                 # yyyymmdd 2015-06-2420100916
    attr_reader :energy_consumed             # number watt hours 10800
    attr_reader :peak_energy_import          # number watt hours 5000
    attr_reader :off_peak_energy_import      # number watt hours 1000
    attr_reader :shoulder_energy_import      # number watt hours 4000
    attr_reader :high_shoulder_energy_import # number watt hours 800
    attr_reader :average_consumption         # number watt hours 1392
    attr_reader :minimum_consumption         # number watt hours 10
    attr_reader :maximum_consumption         # number watt hours 2890
    attr_reader :credit_amount               # decimal currency 37.29
    attr_reader :debit_amount                # decimal currency 37.29

    API_URL = "http://pvoutput.org/service/r2/getstatistic.jsp"

    def initialize(statistics)
      @energy_generated = statistics[:energy_generated]
      @energy_exported = statistics[:energy_exported]            
      @average_generation = statistics[:average_generation] 
      @minimum_generation = statistics[:minimum_generation]         
      @maximum_generation = statistics[:maximum_generation]         
      @average_efficiency = statistics[:average_efficiency]         
      @outputs = statistics[:outputs] 
      @actual_date_from = statistics[:actual_date_from]           
      @actual_date_to = statistics[:actual_date_to] 
      @record_efficiency = statistics[:record_efficiency]          
      @record_date = statistics[:record_date]                
      @energy_consumed = statistics[:energy_consumed]            
      @peak_energy_import = statistics[:peak_energy_import]         
      @off_peak_energy_import = statistics[:off_peak_energy_import]     
      @shoulder_energy_import = statistics[:shoulder_energy_import]     
      @high_shoulder_energy_import =statistics[:high_shoulder_energy_import]
      @average_consumption = statistics[:average_consumption]        
      @minimum_consumption = statistics[:minimum_consumption]        
      @maximum_consumption = statistics[:maximum_consumption]        
      @credit_amount = statistics[:credit_amount] 
      @debit_amount = statistics[:debit_amount] 
    end

    def self.do (date_from, date_to, auth_details)
    
      # hit api and return csv data in array
      data = RestClient.get(API_URL, {:params => {:sid => auth_details.system_id, :key => auth_details.api_key, :df => date_from, :dt => date_to, :c => '1', :crdr => '1'}})
      results = CSV.new(data).to_a

      # array to hash
      statistics = { energy_generated: results[0][0],
                     energy_exported: results[0][1],
                     average_generation: results[0][2],
                     minimum_generation: results[0][3],
                     maximum_generation: results[0][4],
                     average_efficiency: results[0][5],
                     outputs: results[0][6],
                     actual_date_from: results[0][7],
                     actual_date_to: results[0][8],
                     record_efficiency: results[0][9],
                     record_date: results[0][10],
                     energy_consumed: results[0][11],
                     peak_energy_import: results[0][12],
                     off_peak_energy_import: results[0][13],
                     shoulder_energy_import: results[0][14],
                     high_shoulder_energy_import: results[0][15],
                     average_consumption: results[0][16],
                     minimum_consumption: results[0][17],
                     maximum_consumption: results[0][18],
                     credit_amount: results[0][19],
                     debit_amount: results[0][20]}
      new(statistics)
    end

  end

end
