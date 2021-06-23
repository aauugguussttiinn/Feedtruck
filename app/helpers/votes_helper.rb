module VotesHelper

  def voted_once?
    current_customer.votes.count > 0 ? true : false
  end

  def last_vote_over_24?
    voted_once? && Time.now > current_customer.votes.last.updated_at + 86400 ? true : false
  end
  
end
