require 'rails_helper'

module Responders
  describe ArtistsController, type: :request do

    describe 'PUT /artists/:artist_id' do
      let(:artist) { Artist.create(name: 'foo') }
      let(:json) { JSON.parse(response.body) }

      before do
        put artist_path(artist), params: { name: name, format: :json }
      end

      context 'when valid params' do
        let(:name) { 'bar' }

        it 'updates artist' do
          expect(response).to be_success
          expect(json['name']).to eq 'bar'
        end
      end

      context 'when invalid params' do
        let(:name) { nil }

        it 'returns errors' do
          expect(response).to be_unprocessable
          expect(json).to include 'name'
          expect(json['name']).to match_array ["can't be blank"]
        end
      end
    end
  end
end
