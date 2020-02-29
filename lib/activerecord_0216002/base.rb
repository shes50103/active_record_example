module ActiveRecord
  class Base
    # "INSERT INTO users (name,phone,age) VALUES ('Ancestor', '0932445631', '12')"
    # "SELECT column_name FROM information_schema.columns WHERE table_name= 'users'"

    class << self
      #0
      def establish_connection(option)
        case option[:adapter]
        when 'postgresql'
          @@connection = ConnectionAdapter::PostgreSQLAdapter.new(option[:database])
        when 'sqlite'
          #TODO
        end
      end

      #0
      def connection
        @@connection
      end
    end
  end
end