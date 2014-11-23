class Tour
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :actions, type: Array
end

class Transfer
  attr_reader :name, :description, :method, :duration, :from, :to

  def initialize( name, desc, duration, method, from, to )
    @name = name
    @description = desc
    @method = method
    @duration = duration
    @from = from
    @to = to
  end

  def mongoize
    {
      :name          => name         ,
      :description   => description  ,
      :duration      => duration     ,
      :method        => method       ,
      :from          => from         ,
      :to            => to           ,
    }
  end

  class << self

    def demongoize( obj )
      Trasfer.new( obj[:name], obj[:description], obj[:duration], obj[:method], obj[:from], obj[:to] )
    end

    def mongoize( obj )
      case obj
      when Transfer then obj.mongoize
      else obj
      end
    end

    def evolve( obj )
      case obj
      when Trasfer then obj.mongoize
      else obj
      end
    end

  end
end

class Seeing
  attr_reader :name, :description, :duration, :spot

  def initialize( name, desc, duration, spot )
    @name = name
    @description = desc
    @duration = duration
    @spot = spot
  end

  def mongoize
    {
      :name        => name        ,
      :description => description ,
      :duration    => duration    ,
      :spot        => spot        ,
    }
  end

  class << self
    def demongoize( obj )
      Seeing.new( obj[:name], obj[:description], obj[:duration], obj[:spot] )
    end

    def mongoize( obj )
      case obj
      when Seeing then obj.mongoize
      else obj
      end
    end

    def evolve( obj )
      case obj
      when Seeing then obj.mongoize
      else obj
      end
    end
  end

end
