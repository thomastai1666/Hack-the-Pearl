class StaticPagesController < ApplicationController

    def new
        @registration = Registration.new
    end


    def create
        @registration = Registration.new(registration_params)

        respond_to do |format|
          if @registration.save
            format.html { redirect_to @registration, notice: 'Registration was successfully created.' }
            format.json { render :show, status: :created, location: @registration }
          else
            format.html { render :new }
            format.json { render json: @registration.errors, status: :unprocessable_entity }
          end
        end
    end


    private


    def registration_params
        params.require(:registration).permit(:first_name, :last_name, :organization, :linked_in, :email)
    end
end