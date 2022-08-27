class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  def sample_method
    logger.debug "*** I'm calling this method from the controller. It will log stuff. ***"
  end
end
