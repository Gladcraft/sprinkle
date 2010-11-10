module Sprinkle
  module Verifiers
    # = Timezone Verifier
    #
    # Contains a verifier to check if the provided string is contained in the server's timezone
    # 
    # == Example Usage
    #
    #   verify { timezone_contains 'New_York' }
    #
    module RVM 
      Sprinkle::Verify.register(Sprinkle::Verifiers::RVM)
      
      # Checks to see if the provided string is contained in the server's timezone
      def timezone_contains(timezone_str)
        @commands << "grep #{timezone_str} /etc/timezone"
      end
    end
  end
end
