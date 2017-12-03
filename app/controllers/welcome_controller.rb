class WelcomeController < ApplicationController
  def index
  end

  def contact_form
     if !params[:name].nil? && !params[:email].nil? && !params[:email].nil? && !params[:message].nil? && !params[:tel].nil? 
	  	c = ContactForm.new(:name => params[:name], :email => params[:email], :message => params[:message], :tel => params[:tel])
	  	c.deliver
	  	flash[:notice] = "Post sent"
  	  	redirect_to root_url
  	 else
	  	flash[:notice] = "Post not sent"
  	 	redirect_to root_url
  	 end
  end

end
