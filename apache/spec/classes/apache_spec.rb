require 'spec_helper'

describe 'apache', :type => 'class'  do

  context "On a Debian OS" do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end

    it { 
       should contain_package('httpd').with({ 'name' => 'apache2' }) 
       should contain_service('httpd').with({ 'name' => 'apache2' })
    }
  end

  context "On a RedHat OS" do
    let :facts do
      {
        :osfamily => 'RedHat'
      }
    end

    it {
       should contain_package('httpd').with({ 'name' => 'httpd' })
       should contain_service('httpd').with({ 'name' => 'httpd' })
    }
  end
end
