RSpec.describe 'POST /comments' do 
  let!(:article) { create(:article) }

  describe 'successfully creates comment' do 
    let!(:comment) { create(:comment)}
    before do
      post '/comments',
      params: { comment: { body: 'comment text'}}
    end 

    it 'returns 200 response' do 
      expect(response.status).to eq 200
    end 

    it 'returns response message' do 
      expect(response_json['message']).to eq 'Your comment has been added'
    end 
  end 
end 