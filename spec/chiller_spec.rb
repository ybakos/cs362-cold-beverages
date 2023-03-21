require_relative '../lib/chiller'

describe 'A chiller' do

end

class ChillerTest < Chiller
  attr_reader :power, :contents

  def initialize
    super
  end

end
