class ApiVersion
    attr_reader :version, :default
  
    def initialize(version, default = { forced: false })
      @version = version
      @default = default
    end
  
    def matches?(request)
      check_headers(request.headers) || default
    end
  
    def check_headers(headers)
      # check version from Accept headers; expect custom media type 'countries'
      accept = headers[:accept]
      accept&.include?("application/vnd.countries.#{version}+json")
    end
end
