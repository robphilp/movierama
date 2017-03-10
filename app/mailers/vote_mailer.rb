class VoteMailer < ActionMailer::Base
  default from: "from@example.com"

  def vote_email(current_user, movie_user, type)
    @current_user = current_user
    @movie_user = movie_user
    @type = type
    mail(to: @movie_user.email, subject: 'A vote has been cast')
  end
end
