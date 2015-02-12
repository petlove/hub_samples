module Hub::Samples
  class Price < Base
    class << self
      def object
        parsed_json('price')
      end

      def request
        {
          'request_id' => request_id,
          'price' => object['price']
        }
      end

      def message
        {
          'message' => 'price:new',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'price' => object['price']
          }
        }
      end
    end
  end
end
