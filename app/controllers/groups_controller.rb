class GroupsController < ApplicationController

  def get_groups
  	@@data = File.read("app/assets/javascripts/groups.json")
  	render :json => @@data
  	# render json: {facultets: Facultet.all, groups: Group.all}
  end

end
