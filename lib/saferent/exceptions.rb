module Saferent
  class Error < Exception

    attr_reader :code, :error
    
    def initialize(code, error)
      @code = code
      @error = error
      super(message)
    end
    
    def message
      "Saferent Error: #{@error} (code: #{@code})"
    end

  end
end
