class EmailapiController < ApplicationController


require 'gibbon'


 def subscribe
   @list_id = ENV["mc_list_id"]
 gibbon = Gibbon::Request.new

gibbon.lists(@list_id).members.create(
  body: {
    email_address: params[:email][:address],
    status: "subscribed"
  }
 )



respond_to do |format|
  format.json{render :json => {:message => "You have been Successfully added to the list! :)"}}
    end
  end

end
