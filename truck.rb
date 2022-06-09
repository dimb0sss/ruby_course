class Truck < Car

  def loaded
    puts "Loaded"
  end

  protected
  def initial_rpm
    500
  end
end
