require 'spec_helper'
describe 'keter' do

  context 'with defaults for all parameters' do
    it { should contain_class('keter') }
  end
end
