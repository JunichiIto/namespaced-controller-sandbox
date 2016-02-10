require 'spec_helper'

describe 'Constant' do
  example do
    class Foo; end
    class Bar; end

    foo_bar = Foo::Bar.new
    bar = Bar.new
    expect(foo_bar.class).to eq bar.class
  end
end