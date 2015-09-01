require 'spec_helper'

describe 'kismet installation' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04')
    runner.converge 'kismet::default'
  end
end
