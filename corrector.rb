class Corrector
  def correct_name(name)
    name.capitalize unless name.is_a?(Integer)
  end
end
