require "nil_roulette/version"

module NilRoulette
  def nil.method_missing(sym, *args, &block)
    ObjectSpace.each_object.to_a.shuffle.find { |o| o.respond_to?(sym) }.send(sym, *args, &block)
  end
end
