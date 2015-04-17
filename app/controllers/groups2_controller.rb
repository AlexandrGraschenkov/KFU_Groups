class Groups2Controller < ApplicationController

  def get_groups
  	render json: {facultets: Facultet.all, groups: Group.all}
  end

end
