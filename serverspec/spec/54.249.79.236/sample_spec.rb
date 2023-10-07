require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe command('source /home/ec2-user/.bash_profile; nodenv versions') do
  its(:stdout) { should match /10\.13\.0/ }
end