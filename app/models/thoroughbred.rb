class Thoroughbred < ActiveRecord::Base
  acts_as_paranoid
  def self.rank_text(value)
    case value
    when 0  then "D"
    when 1  then "C"
    when 2  then "C+"
    when 3  then "B"
    when 4  then "B+"
    when 5  then "A"
    when 6  then "A+"
    when 7  then "AA"
    when 8  then "S"
    when 9  then "S+"
    when 10 then "SS"
    else
      "-"
    end
  end
  def self.gender_text(value)
    case value
    when 0 then "牡"
    when 1 then "牝"
    else
      "-"
    end
  end
  def self.growth_text(value)
    case value
    when 0 then "持続"
    when 1 then "早熟"
    when 2 then "普通"
    when 3 then "晩成"
    else
      "-"
    end
  end
  def self.course_text(value)
    case value
    when 0 then "芝"
    when 1 then "万能"
    when 2 then "ダート"
    else
      "-"
    end
  end
  def self.condition_text(value)
    case value
    when 0 then "×"
    when 1 then "△"
    when 2 then "○"
    when 2 then "◎"
    else
      "-"
    end
  end
end

class Broodmare < Thoroughbred
end

class Stallion < Thoroughbred
end
