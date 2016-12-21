require 'spec_helper'
require 'rails_helper'
require_relative '../controllers/home_controller'


describe HomeController, '#index' do

    describe "when index is hit" do
      it "shows all saved monuments" do
        expect(Monument.all).to exist
        render Monument.all
      end
  end
end


