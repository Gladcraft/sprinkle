module Sprinkle
  module Verifiers
    # = RVM Verifier
    #
    # Contains a verifier to check the existance of ruby versions in RVM.
    # 
    # == Example Usage
    #
    #   verify { has_rvm_ruby '1.9.2' }
    #
    module RVM 
      Sprinkle::Verify.register(Sprinkle::Verifiers::RVM)
      
      # Checks to make sure the ruby version exists in rvm.
      def has_rvm_ruby(ruby_version)
        @commands << "rvm list | grep #{ruby_version}"
      end
    end
  end
end
