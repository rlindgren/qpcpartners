class ContactController < ApplicationController
  def new
  	@contact = Contact.new(params[:contact])

  	respond_to do |format|
  		if @contact.save
  			ContactMailer.thank_you_email(@contact).deliver
  			NotifyMailer.notify_email(@contact).deliver
  			flash[:success] = "Thank you for contacting us today, #{@contact.name.split(' ')[0]}!  We'll get back to you as soon as we can."
  			format.html { redirect_to controller: "pages", action: "contact" }
  			format.json { render json: @contact, status: :created }
  		else
  			flash[:contact] = params[:contact]
  			flash[:warning] = "There was an error processing your message. Please contact us directly. Thank you!"
	        format.html { render template: 'pages/contact' }
	        format.json { render json: @contact.errors, status: :unprocessable_entity }
  		end
  	end
  end
end
