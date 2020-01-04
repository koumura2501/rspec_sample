class User < ApplicationRecord
  attr_accessor :name, :age, :gender

  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end

  def disp_name
    @gender == 0 ? "#{@name}くんは#{@age}歳です" : "#{@name}さんは#{@age}歳です"
  end
end
