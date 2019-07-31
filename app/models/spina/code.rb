module Spina
  class Code < ApplicationRecord

    has_many :page_parts, as: :page_partable
  end
end
