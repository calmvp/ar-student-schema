require_relative '../../db/config'
require 'time'

class Teacher < ActiveRecord::Base

  attr_accessor :name, :email, :phone

  


end
