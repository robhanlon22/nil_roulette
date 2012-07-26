require "nil_roulette/version"

module NilRoulette
  def nil.method_missing(sym, *args, &block)
    object = ObjectSpace.each_object.to_a.shuffle.find { |o| o.respond_to?(sym) }
    object.send(sym, *args, &block) unless object.nil?
  end
end
