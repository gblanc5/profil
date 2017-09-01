class GivemealertsController < ApplicationController
    before_action :set_contact

    def create
      @contact.givemealerts.create!(givemealerts_params)
      redirect_to @contact
    end

    private
      def set_contact
        @contact = Contact.find(params[:contact_id])
      end

      def givemealerts_params
        params.require(:givemealert).permit(:sendtodate, :sendtowho)
      end

end
