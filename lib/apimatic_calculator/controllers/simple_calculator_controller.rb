# apimatic_calculator
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticCalculator
  # SimpleCalculatorController
  class SimpleCalculatorController < BaseController
    # Calculates the expression using the specified operation.
    # @param [OperationTypeEnum] operation Required parameter: The operator to
    # apply on the variables
    # @param [Float] x Required parameter: The LHS value
    # @param [Float] y Required parameter: The RHS value
    # @return [Float] response from the API call
    def get_calculate(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{operation}',
                                     Server::CALCULATOR)
                   .template_param(new_parameter(options['operation'], key: 'operation')
                                    .should_encode(true))
                   .query_param(new_parameter(options['x'], key: 'x'))
                   .query_param(new_parameter(options['y'], key: 'y')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:deserialize_primitive_types))
                    .deserialize_into(proc do |response| response.to_f end)
                    .is_primitive_response(true))
        .execute
    end
  end
end
