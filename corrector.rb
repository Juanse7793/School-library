class Corrector
  def correct_name(name)
    if not name.is_a?(Integer) then
        name.capitalize
    end
  end
end