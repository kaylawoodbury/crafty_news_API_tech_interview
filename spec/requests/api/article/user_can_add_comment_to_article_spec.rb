RSpec.describe 'POST /comments', type: :request do 

  describe 'successfully creates comment' do 
    let!(:article) { create(:article) }
    before do
      post 'api/comments',
      params: { 
        comment: { 
          body: 'comment text', 
          article_id: article.id
          }
        }
    end 

    it 'returns 200 response' do 
      expect(response.status).to eq 200
    end 

    it 'returns response message' do 
      expect(response_json['message']).to eq 'Your comment has been added'
    end 

    it 'comment belongs to article' do 
      expect(Comment.article_id).to eq article.id
    end 
  end 
end 