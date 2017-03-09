class VoteMailerPreview < ActionMailer::Preview
  def vote_email

    VoteMailer.vote_email(User[1], User[2], :like)
  end
end