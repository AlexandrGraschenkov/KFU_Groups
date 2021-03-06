class GroupsController < ApplicationController

  def get_groups
  	@@data = File.read("app/assets/javascripts/groups.json")
  	render :json => @@data
  end

  def generate_groups_json_from_db
  	render json: {last_modified: Time.now.to_time.to_i,facultets: Facultet.all, groups: Group.all}
  end
end
