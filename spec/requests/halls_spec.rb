require 'rails_helper'

RSpec.describe 'Hall API', type: :request do
  # initialize test data 
  let!(:hall) { create_list(:hall, 10) }
  let(:hall_id) { halls.first.id }

  # Test suite for GET /halls
  describe "GET /halls" do
    it "works! (now write some real specs)" do
      get halls_path
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /halls/:id
 # describe 'GET /halls/:id' do
  #  before { get "/halls/#{hall_id}" }

  #  context 'when the record exists' do
   #   it 'returns the hall' do
   #     expect(json).not_to be_empty
   #     expect(json['id']).to eq(hall_id)
   #  end

    #  it 'returns status code 200' do
    #    expect(response).to have_http_status(200)
    #  end
    #end

   # context 'when the record does not exist' do
    #  let(:hall_id) { 100 }

    #  it 'returns status code 404' do
    #    expect(response).to have_http_status(404)
    #  end

    #  it 'returns a not found message' do
    #    expect(response.body).to match(/Couldn't find hall/)
    #  end
   # end
 # end

 # Test suite for POST /halls
  describe 'POST /halls' do
    # valid payload
    let(:valid_attributes) { { hall_id: '2323', time: '22.30pm', date: '4.2.14', lenght: '4 hrs' } }

    context 'when the request is valid' do
      before { post '/halls', params: valid_attributes }

      #it 'works! (now write some real specs)' do
        #expect(json['hall_id']).to eq('2323')
      #end

      #it 'works! (now write some real specs)' do
        #expect(response).to have_http_status(201)
      #end
    end

    context 'when the request is invalid' do
      before { post '/halls', params: { name: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

     
    end
  end


  
end
