class Friend
  def greeting(who=0)
    return "Hello!" if who == 0
    "Hello, #{who}!" if who != 0
  end
end