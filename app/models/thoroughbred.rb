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
    when 0 then "��"
    when 1 then "��"
    else
      "-"
    end
  end
  def self.growth_text(value)
    case value
    when 0 then "����"
    when 1 then "���n"
    when 2 then "����"
    when 3 then "�Ӑ�"
    else
      "-"
    end
  end
  def self.course_text(value)
    case value
    when 0 then "��"
    when 1 then "���\"
    when 2 then "�_�[�g"
    else
      "-"
    end
  end
  def self.condition_text(value)
    case value
    when 0 then "�~"
    when 1 then "��"
    when 2 then "��"
    when 2 then "��"
    else
      "-"
    end
  end
end

class Broodmare < Thoroughbred
end

class Stallion < Thoroughbred
end
