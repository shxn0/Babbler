class Babbler < ActiveRecord::Base
    validates:content, length:{minimum: 1}
    validates:content, length:{maximum: 140}
    validates:content, presence:true
end

    
      