require 'rails_helper'
require 'spec_helper'

RSpec.describe VoteMailer, :type => :mailer do

  puts Rails.env

  describe 'vote' do
    current_user = User.new :name => 'Rob', :email => 'rob@rob.com'
    movie_user = User.new :name => 'Dave', :email => 'dave@dave.com'
    let(:mail) { VoteMailer.create_vote_email(current_user, movie_user, :like)}

    it 'renders email' do
      expect(mail.from).to eq('from@example.com')
      expect(mail.to).to eq('dave@edave.com')
      expect(mail.subject).to eq('A vote has been cast')
      expect(mail.body.encoded).to include('rob@rob.com likes your movie!!')
    end
  end

end
