require "spec_helper"

describe Algorithm do

  #----------------------------------------------------------------------------

  describe "Creating an instance" do
    context "with errors" do
      it "fails when no name is given" do
        expect {
          FactoryGirl.create(:algorithm, :description => "test", :string_identifier => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "fails when no description is given" do
        expect {
          FactoryGirl.create(:algorithm, :name => "test", :string_identifier => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "fails when no string identifier is given" do
        expect {
          FactoryGirl.create(:algorithm, :name => "test", :description => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

  #----------------------------------------------------------------------------

end
