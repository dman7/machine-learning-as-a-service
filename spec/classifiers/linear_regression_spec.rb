require "spec_helper"

describe LinearRegression do

  #----------------------------------------------------------------------------

  context "when initializing with wrong data" do
    it "raises an error on empty data" do
      expect { LinearRegression.new([]) }.to raise_error(ArgumentError)
    end

    it "raises an error on malformed data" do
      expect { LinearRegression.new([ [0,0], [1] ]) }.to raise_error(ArgumentError)
    end
  end

  #----------------------------------------------------------------------------

  context "when initializing with proper data" do
    it "predicts correct fit for [[0,0], [1,1], [2,2]]" do
      data = [[0,0], [1,1], [2,2]]
      lr = LinearRegression.new(data)
      expect( lr.predict(4) ).to eq(4)
    end

    it "predicts correct fit for [[0,0], [1,0], [3,0]]" do
      data = [[0,0], [1,0], [3,0]]
      lr = LinearRegression.new(data)
      expect( lr.predict(4) ).to eq(0)
    end

    it "predicts correct fit for [[0,0], [1,0], [3,0]]" do
      data = [[0,0], [1,0], [3,0]]
      lr = LinearRegression.new(data)
      expect( lr.predict(4) ).to eq(0)
    end

    # Data taken from: http://stattrek.com/regression/regression-example.aspx
    it "predicts correct fit for sample data A" do
      data = [ [95, 85], [85, 95], [80, 70], [70, 65], [60, 70] ]
      lr = LinearRegression.new(data)
      expect( lr.predict(80).round(2) ).to eq( 78.29 )
    end

    # Data taken from: http://people.stern.nyu.edu/wgreene/Statistics/SimpleLinearRegressionCollection.pdf
    it "predicts correct fit for sample data B" do
      data = [
        [41.66, 20812.70], [39.22, 20302.30], [40.54, 20734.90], [41.78, 20776.70], [38.90, 20258.70],
        [38.88, 20373.00], [38.69, 20232.40], [38.84, 20213.70], [40.58, 20493.40], [37.18, 19848.70],
        [40.48, 20750.30], [41.16, 20818.90], [36.88, 19932.80], [39.19, 20265.10], [39.47, 20303.70],
        [40.38, 20654.50], [41.41, 20760.30], [40.01, 20553.00], [38.07, 20002.20], [39.96, 20463.10]
      ]

      lr = LinearRegression.new(data)
      expect( lr.predict(50).round(0) ).to eq( 22601 )
    end
  end

  #----------------------------------------------------------------------------

end
