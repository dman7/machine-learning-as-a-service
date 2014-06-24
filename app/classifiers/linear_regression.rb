# Class that is responsible for the linear regression classifier.
# The equation for a simple linear regression is
#
# output = intercept + slope * input
#
# We'll use http://en.wikipedia.org/wiki/Simple_linear_regression to
# calculate the best fit.

class LinearRegression
  attr_accessor :data

  #----------------------------------------------------------------------------

  # Assume the data is an (Ruby) array of arrays. Each element is an array
  # of size two, where the first element is the input variable, and the second
  # element is the output variable.
  def initialize(data)
    raise ArgumentError, "Training set can't be empty" if data.blank?

    if data.find {|point_array| point_array.count != 2}
      raise ArgumentError, "Training set must consist of one input and one output variable"
    end

    @data = data
  end

  #----------------------------------------------------------------------------

  def predict(input_variable)
    return (intercept + slope * input_variable)
  end

  #----------------------------------------------------------------------------
  # TODO: This method may be better suited for extending Ruby Array class.

  def self.mean(array)
    return nil if array.blank?
    sum = array.inject { |sum, n| sum + n }
    return sum.to_f / array.count
  end

  #----------------------------------------------------------------------------
  # Helper methods

  private

  def input_variables
    return @data.map(&:first)
  end

  def output_variables
    return @data.map(&:last)
  end

  def intercept
    input_mean  = LinearRegression.mean(input_variables)
    output_mean = LinearRegression.mean(output_variables)

    return output_mean - slope * input_mean
  end

  def slope
    input_mean  = LinearRegression.mean(input_variables)
    output_mean = LinearRegression.mean(output_variables)

    numerator   = 0
    denominator = 0
    @data.each do |x,y|
      numerator += (x - input_mean) * (y - output_mean)
      denominator += (x - input_mean) ** 2
    end
    return numerator.to_f / denominator
  end

  #----------------------------------------------------------------------------

end
