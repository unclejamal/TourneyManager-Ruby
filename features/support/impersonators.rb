module Cucumber
  module Impersonators
    attr_reader :current_impersonator

    def a_spectator
      @spectator ||= Spectator.new self
      @current_impersonator = @spectator
      @spectator
    end
    
    def a_system
      @system ||= System.new self
      @current_impersonator = @spectator
      @system
    end

    module PartOfWorld
      def method_missing(method, *args, &block)
        @world.send(method, *args, &block)
      end
    end

    class Spectator
    include Cucumber::Impersonators::PartOfWorld
      def initialize(world)
        @world = world
      end

      def view_tourneys
        @actual_tourneys = a_system.office.view
      end
    end

    class System
    include Cucumber::Impersonators::PartOfWorld
      attr_reader :office

      def initialize(world)
        @world = world
      end
      
      def create_office
        @office = TourneyOffice.new
      end

    end
  end
  
  module ToBeRemoved
    def remove_me
      puts "remove_me"
    end
  end
end
