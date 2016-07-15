require "../spec_helper"

module OptargRaiseUnknownOptionIfConcatenatedOptionsNotMatchedFeature
  class Model < Optarg::Model
  end

  it name do
    expect_raises(Optarg::UnknownOption, Optarg::UnknownOption.new("-a").message) { Model.parse %w(-ab)}
  end
end