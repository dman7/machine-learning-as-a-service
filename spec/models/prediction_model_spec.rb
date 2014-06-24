require "spec_helper"

describe PredictionModel do

  #----------------------------------------------------------------------------

  describe "creating an instance" do
    context "with errors" do
      it "fails when no algorithm is specified" do
        expect {
          FactoryGirl.create(:prediction_model, :training_data_set_id => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "fails when no training data set is specified" do
        expect {
          FactoryGirl.create(:prediction_model, :algorithm_id => "test")
        }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

  #----------------------------------------------------------------------------

end
