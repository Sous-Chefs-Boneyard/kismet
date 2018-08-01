require 'spec_helper'

describe 'kismet installation' do
  let(:runner) { ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '18.04') }
  let(:chef_run) { runner.converge('kismet::default') }

  it 'converges successfully' do
    expect { :chef_run }.to_not raise_error
  end
end
