require_relative 'spec_helper'

describe 'paintdotnet::default' do

	context 'on windows' do
		before { Fauxhai.mock(platform:'windows', version:'2012') }

		let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

	  	it 'installs Paint.Net' do
		   	expect(chef_run).to install_package('Paint.Net v4.0.1')
	  	end
	end

	context 'on centos' do
		before { Fauxhai.mock(platform:'centos', version:'7.0') }

		let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

	  	it 'does nothing' do
	    	expect(chef_run).to do_nothing
	  	end
	end


end
