require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe command('node -v') do
  its(:stdout) { should match /10\.13\.0/ }
end