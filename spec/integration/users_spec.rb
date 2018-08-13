require 'swagger_helper'

describe 'Users API' do
    path '/users.json' do
        get 'Gets all Users' do
            produces 'application/json'

            response '200', 'Users Found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer },
                        name: { type: :string },
                        password: { type: :string }
                    },
                    required: ['id', 'name', 'password']

                run_test!
            end

            response '404', 'Users not found' do
                run_test!
            end
        end   
    end
end