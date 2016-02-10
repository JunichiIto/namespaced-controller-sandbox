require 'spec_helper'

describe 'Constant' do
  context 'Use class as namespace' do
    example do
      class Foo; end
      class Bar; end

      foo_bar = Foo::Bar.new
      bar = Bar.new
      expect(foo_bar.class).to eq bar.class

      class Foo::Bar; end
      foo_bar = Foo::Bar.new
      bar = Bar.new
      expect(foo_bar.class).to_not eq bar.class
    end
  end

  context 'Use module as namespace' do
    example do
      module Hoge; end
      class Fuga; end

      expect { Hoge::Fuga.new }.to raise_error NameError

      class Hoge::Fuga; end
      hoge_fuga = Hoge::Fuga.new
      fuga = Fuga.new
      expect(hoge_fuga.class).to_not eq fuga.class
    end
  end
end