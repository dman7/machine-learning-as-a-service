require "spec_helper"

describe TrainingDataSet do

  #----------------------------------------------------------------------------

  describe "Creating an instance" do
    context "with errors" do
      it "fails when no developer id is specified" do
        expect {
          FactoryGirl.create(:training_data_set, :raw_content => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "fails when no raw_content is specified" do
        expect {
          FactoryGirl.create(:training_data_set, :developer_id => 1)
        }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

  #----------------------------------------------------------------------------

end
