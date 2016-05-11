# interview question name: mazes
Level.find_or_initialize_by(name: 'maze', index: 0).tap do |level|
  level.update!(
    input: <<-INPUT
WWWWW
WS EW
WWWWW
INPUT
  )
end

Level.find_or_initialize_by(name: 'maze', index: 1).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
WWWWWWWWWWWWWW
WS           W
WWWWWWWWWWWW W
W          W W
W WWWWWWWW W W
W W     EW W W
W W WWWWWW W W
W W        W W
W WWWWWWWWWW W
W            W
WWWWWWWWWWWWWW
INPUT
  )
  level.generate_new_password!
end

Level.find_or_initialize_by(name: 'maze', index: 2).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
WWWWWWWWWWWWWWWW
WEW            W
WWWWW WWWWWWW WW
WS      WEWEW  W
WW WWWWWWWW WW W
W       WEW    W
WWWWWWWWWWWWWWWW
INPUT
  )
  level.generate_new_password!
end

Level.find_or_initialize_by(name: 'maze', index: 3).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
WS                                                                                                W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                 W
W                                                                                                EW
WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
INPUT
  )
  level.generate_new_password!
end

Level.find_or_initialize_by(name: 'maze', index: 4).tap do |level|
  level.assign_attributes(
    message: 'Good job! If you enjoyed the challenge, check out /advanced',
    input: <<-INPUT
WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
WS W           W     W        W           W           W                       W     W     W                          W                    W           W
W  W  WWWWWWW  W  W  W  WWWW  WWWW  WWWW  W  WWWWWWW  W  WWWWWWWWWWWWWWWWWWW  W  W  W  W  WWWWWWWWWWWWWWWWWWWWWWWWW  W  WWWWWWWWWW  WWWW  W  WWWWWWW  W
W     W        W  W  W     W     W  W  W     W        W  W              W     W  W  W  W  W                       W     W           W     W     W     W
WWWWWWW  W  WWWW  W  WWWW  WWWW  W  W  WWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  W  W  W  W  W  W  WWWWWWW  WWWWWWWWWW  W  WWWWWWWWWWWWWWWW  WWWWWWW  W  WWWW
W        W        W  W     W     W           W  W        W           W  W  W     W     W  W  W     W  W  W     W  W     W     W     W        W  W  W  W
W  WWWWWWWWWWWWWWWW  W  W  WWWWWWWWWWWWWWWW  W  W  WWWWWWWWWW  WWWW  WWWW  WWWWWWWWWWWWW  W  W  W  W  W  W  W  W  WWWW  W  W  W  W  WWWWWWW  W  W  W  W
W           W        W  W                    W  W     W        W  W        W              W  W  W     W  W  W  W        W  W     W  W        W  W  W  W
WWWWWWWWWW  W  WWWWWWWWWWWWWWWW  WWWWWWWWWWWWW  WWWW  W  WWWWWWW  WWWWWWWWWW  WWWWWWWWWWWWW  W  WWWWWWW  W  WWWWWWWWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  W
W        W  W     W           W  W     W     W  W     W  W        W        W     W        W  W  W     W  W        W  W        W     W  W        W     W
W  WWWW  W  WWWW  W  WWWWWWW  W  W  WWWW  W  W  W  WWWW  W  WWWWWWW  WWWW  WWWW  W  WWWW  W  W  WWWW  W  WWWWWWW  W  W  WWWWWWW  WWWW  W  WWWW  W  WWWW
W  W  W     W  W     W     W  W  W        W  W     W  W  W     W     W  W        W  W  W  W  W  W     W        W  W        W     W     W     W     W  W
W  W  WWWWWWW  WWWWWWW  W  W  W  WWWWWWW  W  W  WWWW  W  WWWW  WWWWWWW  WWWWWWWWWW  W  W  W  W  W  W  WWWW  WWWW  WWWWWWW  W  WWWWWWWWWWWWW  WWWWWWW  W
W     W        W        W     W  W  W     W     W        W              W     W     W     W  W  W  W  W        W  W        W  W     W        W        W
WWWWWWW  WWWWWWW  WWWWWWWWWW  W  W  W  WWWWWWWWWW  WWWWWWWWWWWWW  WWWWWWWWWW  W  WWWWWWWWWW  W  W  W  W  WWWW  W  W  WWWWWWW  W  W  W  WWWWWWW  WWWW  W
W  W     W        W     W           W     W                    W           W           W     W     W  W  W     W  W     W     W  W  W     W     W  W  W
W  W  WWWW  WWWWWWW  W  WWWWWWWWWWWWWWWW  W  WWWW  WWWWWWWWWW  WWWWWWWWWW  WWWW  WWWW  W  WWWWWWWWWW  W  W  WWWW  WWWW  W  WWWW  W  WWWW  WWWW  W  W  W
W  W        W        W  W           W     W     W  W     W     W     W  W  W  W     W  W  W  W        W  W        W  W  W        W     W     W     W  W
W  WWWWWWWWWW  W  W  WWWW  WWWW  WWWW  WWWWWWW  W  W  W  W  WWWW  W  W  W  W  WWWW  W  W  W  W  WWWWWWW  WWWWWWWWWW  W  WWWWWWWWWWWWW  WWWW  W  WWWW  W
W     W        W  W        W  W        W        W     W  W     W  W     W     W     W        W  W        W        W     W     W              W  W     W
WWWW  W  WWWWWWWWWWWWWWWWWWW  WWWWWWWWWW  WWWWWWWWWWWWW  WWWW  W  WWWW  W  W  WWWWWWWWWWWWW  W  W  WWWWWWW  WWWW  WWWW  W  WWWW  WWWW  W  WWWWWWW  WWWW
W  W     W                                W     W  W     W     W  W     W  W        W        W  W     W     W     W  W  W        W  W  W        W     W
W  WWWWWWW  WWWWWWWWWWWWWWWW  WWWWWWWWWWWWW  W  W  W  WWWW  WWWW  W  WWWW  WWWWWWW  W  WWWWWWW  WWWW  W  WWWWWWWWWW  W  WWWWWWWWWW  W  WWWWWWW  W  W  W
W           W  W              W              W  W  W  W        W  W  W  W        W        W     W     W     W        W  W        W     W           W  W
WWWWWWWWWWWWW  W  WWWWWWWWWWWWWWWWWWWWWWWWWWWW  W  W  W  WWWW  W  W  W  WWWWWWW  WWWWWWW  W  WWWW  WWWWWWW  W  W  WWWW  W  WWWW  WWWWWWWWWWWWWWWWWWWWWW
W     W        W           W  W           W     W  W  W     W  W  W     W        W     W  W     W        W     W     W  W  W  W                       W
W  W  W  WWWW  WWWWWWWWWW  W  W  WWWWWWW  W  WWWW  W  WWWW  W  W  W  WWWW  WWWWWWW  W  WWWWWWW  WWWWWWW  W  WWWWWWW  W  W  W  WWWWWWWWWWWWWWWWWWWWWW  W
W  W  W     W  W           W     W     W  W     W     W     W     W        W     W  W     W              W     W  W        W     W        W        W  W
W  WWWWWWW  W  W  WWWWWWWWWWWWWWWW  WWWW  WWWW  W  WWWW  WWWWWWWWWWWWWWWWWWWWWW  W  WWWW  W  WWWWWWWWWWWWWWWW  W  WWWW  WWWWWWW  W  WWWW  W  WWWW  W  W
W  W        W     W     W        W     W     W  W  W     W     W     W  W        W     W  W     W              W     W     W     W  W  W  W     W     W
W  W  WWWWWWWWWWWWW  W  W  WWWW  WWWW  WWWW  W  W  W  WWWWWWW  W  W  W  W  W  WWWW  W  W  WWWW  W  WWWWWWWWWWWWW  WWWWWWW  W  WWWW  W  W  WWWW  WWWW  W
W  W        W        W  W  W     W        W  W  W  W           W  W        W  W     W  W  W  W     W           W           W     W     W        W     W
W  WWWWWWW  W  WWWWWWW  W  W  WWWW  W  WWWW  W  W  WWWWWWWWWWWWW  WWWW  WWWW  W  WWWWWWW  W  WWWWWWWWWWWWWWWW  WWWWWWWWWWWWWWWW  WWWWWWWWWWWWWWWW  WWWW
W           W        W  W  W  W     W  W        W     W     W     W  W     W     W     W  W  W     W     W     W           W                    W     W
W  WWWWWWWWWWWWWWWW  W  W  W  W  WWWW  W  W  WWWWWWW  W  W  W  WWWW  WWWW  WWWWWWW  W  W  W  W  W  W  W  W  WWWW  WWWWWWW  W  WWWW  WWWWWWWWWW  WWWW  W
W  W        W        W  W  W  W     W     W           W  W  W     W           W     W  W  W     W  W  W     W     W     W  W     W     W     W        W
W  W  WWWW  W  WWWWWWW  W  WWWWWWW  WWWWWWWWWWWWW  W  W  W  WWWW  WWWW  WWWWWWW  WWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  WWWW  WWWWWWWWWW  W  W  WWWWWWWWWW
W  W     W  W  W     W  W           W     W     W  W     W        W     W     W     W     W  W     W     W     W     W     W  W           W           W
W  WWWW  W  W  W  W  W  WWWWWWWWWWWWW  W  W  W  W  WWWWWWWWWWWWWWWW  WWWW  W  W  WWWW  WWWW  W  WWWWWWW  WWWW  WWWWWWW  WWWW  W  WWWWWWWWWWWWWWWWWWW  W
W     W  W  W  W  W  W                 W  W  W  W  W     W        W        W  W  W     W     W        W     W        W        W     W     W           W
WWWW  W  WWWW  WWWW  WWWWWWWWWWWWWWWWWWW  WWWW  W  W  W  WWWWWWW  WWWWWWWWWW  W  W  WWWW  W  WWWW  W  WWWW  WWWWWWW  WWWWWWW  WWWW  W  W  W  W  WWWWWWW
W     W     W     W                    W           W  W                 W     W     W     W     W  W  W     W     W  W     W  W     W  W     W        W
W  WWWWWWW  WWWW  WWWWWWWWWWWWWWWWWWW  W  WWWW  WWWW  W  WWWWWWWWWWWWW  W  WWWWWWW  W  WWWWWWW  WWWW  W  WWWW  WWWW  WWWW  W  WWWWWWW  WWWWWWWWWWWWW  W
W  W              W     W        W  W  W     W     W  W     W        W  W  W     W  W     W  W     W  W           W                    W     W        W
WWWW  WWWWWWWWWWWWW  W  WWWWWWW  W  W  WWWW  WWWW  W  WWWWWWW  WWWW  W  W  W  W  WWWWWWW  W  WWWW  W  WWWWWWWWWW  W  WWWWWWWWWWWWWWWWWWWWWW  W  WWWW  W
W     W     W     W  W  W     W  W        W  W     W  W        W     W     W  W  W        W  W  W     W  W     W     W        W              W     W  W
W  WWWW  W  WWWW  W  W  W  W  W  WWWW  W  WWWW  WWWWWWW  WWWWWWW  W  WWWWWWW  WWWW  WWWWWWW  W  WWWW  W  W  W  WWWWWWW  WWWW  W  WWWWWWW  WWWWWWWWWW  W
W  W     W     W     W     W  W     W  W        W     W     W     W     W           W        W        W     W           W  W  W        W  W     W     W
W  W  WWWWWWW  W  WWWWWWWWWW  WWWW  W  WWWWWWWWWW  W  W  WWWW  WWWWWWWWWW  W  WWWWWWW  WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW  W  WWWWWWW  W  W  WWWW  WWWW
W     W        W  W           W  W  W           W  W  W     W  W        W  W     W        W     W                    W     W           W           W  W
WWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  WWWWWWWWWWWWW  W  WWWW  W  W  WWWW  W  WWWW  W  WWWW  W  W  W  WWWWWWWWWWWWWWWW  W  WWWWWWWWWWWWWWWWWWWWWWWWWWWW  W
W     W        W  W     W     W           W        W     W  W  W     W  W     W  W  W     W  W  W  W  W     W        W  W                       W     W
W  W  WWWWWWW  W  WWWW  W  W  WWWWWWWWWW  W  W  WWWWWWW  W  W  WWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  W  W  W  W  WWWWWWW  W  WWWWWWW  WWWWWWWWWWWWW  WWWW
W  W              W     W  W     W        W  W  W        W  W        W     W     W        W        W  W  W  W           W        W     W        W     W
W  WWWWWWWWWW  W  W  WWWWWWWWWW  W  WWWWWWW  WWWW  WWWWWWW  WWWWWWW  WWWW  W  WWWW  WWWW  W  W  W  W  W  WWWW  WWWWWWWWWWWWWWWW  W  W  W  W  W  WWWW  W
W  W           W  W     W     W  W  W     W  W     W        W     W     W  W     W     W     W  W     W        W           W     W  W     W  W  W     W
W  WWWWWWWWWWWWW  W  WWWW  W  W  W  W  WWWW  W  WWWWWWW  WWWW  W  WWWW  W  WWWW  WWWW  WWWWWWW  WWWWWWWWWWWWWWWW  WWWWWWW  W  WWWWWWWWWWWWWWWW  W  WWWW
W  W           W  W  W     W     W  W     W  W           W  W  W     W  W  W     W           W  W     W        W        W  W           W        W     W
W  W  WWWWWWW  W  W  W  WWWWWWWWWW  WWWW  W  WWWWWWWWWWWWW  W  W  W  W  W  W  W  WWWWWWWWWW  W  W  W  W  WWWW  WWWWWWW  W  WWWWWWWWWW  W  WWWWWWWWWW  W
W  W  W     W  W  W     W           W     W  W     W        W  W  W        W  W  W        W  W  W  W     W     W     W  W  W     W  W  W  W     W  W  W
W  WWWW  W  W  W  WWWWWWW  W  WWWWWWW  WWWW  W  W  WWWWWWW  W  WWWWWWW  WWWWWWW  W  WWWW  W  W  W  WWWWWWWWWWWWW  WWWW  W  W  W  W  W  W  W  W  W  W  W
W  W     W     W  W        W        W           W        W  W     W     W     W  W  W  W  W  W  W  W           W        W  W  W     W  W  W  W     W  W
W  W  W  WWWWWWW  W  WWWWWWWWWW  W  WWWWWWW  WWWWWWWWWW  W  WWWW  WWWWWWW  W  W  W  W  W  WWWW  W  W  WWWW  W  WWWWWWWWWW  W  WWWWWWW  W  W  WWWW  W  W
W     W     W     W        W     W  W     W        W  W  W     W     W     W     W     W        W     W  W  W  W        W  W           W  W  W     W  W
WWWWWWWWWW  W  WWWWWWWWWW  WWWWWWW  W  W  WWWWWWW  W  W  WWWW  WWWW  W  WWWWWWWWWW  WWWWWWWWWW  WWWWWWW  W  W  W  WWWW  W  WWWWWWWWWWWWW  W  W  WWWW  W
W     W     W  W     W  W     W        W     W     W  W  W  W           W  W     W  W        W           W  W  W  W     W     W     W        W     W  W
W  W  W  WWWW  W  W  W  WWWW  WWWW  WWWWWWWWWW  WWWW  W  W  WWWWWWW  WWWW  W  W  W  WWWWWWW  WWWWWWWWWWWWW  W  WWWW  WWWWWWW  W  W  W  WWWWWWWWWWWWW  W
W  W        W  W  W  W           W     W  W     W     W           W  W  W     W     W     W     W           W  W        W  W     W  W  W              W
W  WWWWWWWWWW  WWWW  W  WWWWWWW  WWWW  W  W  WWWW  W  WWWW  WWWW  W  W  W  WWWWWWWWWW  W  WWWW  W  WWWWWWWWWW  W  WWWW  W  WWWWWWW  W  W  WWWWWWWWWWWWW
W  W        W     W  W  W        W     W  W  W     W     W  W     W        W     W     W        W        W  W  W     W                 W  W           W
W  W  WWWW  WWWW  W  WWWW  WWWWWWW  WWWW  W  W  WWWWWWWWWW  W  W  WWWWWWWWWW  W  W  WWWWWWWWWWWWWWWW  W  W  W  WWWWWWWWWWWWWWWWWWW  WWWW  W  WWWW  W  W
W  W  W  W  W  W  W        W     W     W     W              W  W  W     W     W     W                 W  W  W        W        W     W     W  W     W  W
W  W  W  W  W  W  WWWWWWW  W  W  WWWW  W  WWWWWWW  WWWWWWWWWW  W  W  W  W  WWWW  WWWW  WWWWWWWWWWWWWWWW  W  WWWWWWW  W  WWWW  WWWW  W  WWWW  W  WWWW  W
W     W     W  W  W     W     W  W  W     W  W     W        W  W     W     W  W     W        W           W  W  W        W  W     W  W        W  W     W
WWWWWWWWWWWWW  W  W  W  WWWWWWW  W  WWWWWWW  W  WWWWWWWWWW  W  WWWWWWWWWWWWW  WWWW  WWWWWWW  W  WWWWWWWWWW  W  W  WWWWWWW  WWWW  W  W  WWWWWWW  W  WWWW
W           W  W  W  W  W        W     W        W           W     W              W  W  W     W           W  W  W  W     W           W  W        W  W  W
W  WWWWWWW  W  W  W  W  W  WWWWWWWWWW  WWWW  WWWWWWW  WWWWWWWWWW  W  WWWWWWWWWW  W  W  W  WWWWWWWWWWWWW  W  W  W  W  WWWWWWWWWW  W  W  W  WWWWWWW  W  W
W     W  W     W  W  W  W     W     W        W     W  W           W           W     W     W              W  W     W              W     W  W     W  W  W
WWWW  W  WWWW  W  W  W  WWWW  W  WWWWWWWWWWWWW  W  W  W  WWWWWWWWWWWWWWWWWWW  WWWWWWWWWW  W  WWWWWWWWWWWWW  WWWWWWWWWWWWWWWWWWWWWWWWW  W  WWWW  W  W  W
W  W  W     W        W  W     W  W     W     W  W  W           W        W     W     W     W  W     W     W  W     W        W  W     W  W        W     W
W  W  WWWW  WWWWWWWWWW  W  WWWW  W  W  W  W  W  W  WWWWWWW  W  WWWWWWW  W  WWWW  W  W  WWWW  W  W  W  W  W  W  W  W  WWWW  W  W  WWWW  WWWW  W  W  WWWW
W     W        W        W  W     W  W     W  W  W  W     W  W           W  W     W  W     W     W  W  W     W  W  W  W     W     W     W     W  W     W
WWWWWWWWWW  W  W  WWWWWWW  WWWW  W  WWWWWWW  W  WWWW  W  WWWWWWW  WWWWWWW  WWWWWWW  WWWW  WWWWWWW  W  WWWWWWW  W  WWWW  WWWW  W  W  WWWW  WWWWWWWWWW  W
W        W  W  W  W     W  W     W        W  W        W     W     W                 W        W        W  W     W     W     W  W        W  W           W
W  WWWW  WWWW  W  W  W  W  W  WWWWWWWWWW  WWWW  WWWW  WWWW  W  WWWW  WWWWWWWWWWWWWWWW  WWWW  WWWW  WWWW  W  WWWW  W  W  W  WWWWWWWWWW  W  WWWWWWWWWW  W
W     W              W  W  W     W        W     W     W  W     W     W     W           W     W        W     W     W  W  W              W     W        W
WWWW  WWWWWWW  WWWWWWWWWW  W  WWWW  WWWWWWW  WWWW  WWWW  WWWWWWWWWW  W  W  W  WWWWWWWWWWWWWWWW  WWWWWWWWWWWWW  WWWW  W  WWWWWWWWWW  WWWWWWW  W  WWWWWWW
W     W     W              W  W     W  W     W     W  W           W     W  W     W              W        W     W     W  W        W     W  W  W        W
W  WWWW  W  WWWWWWWWWWWWWWWW  W  WWWW  W  WWWW  WWWW  WWWWWWWWWW  W  WWWW  WWWW  W  WWWWWWWWWWWWW  WWWW  W  WWWW  WWWWWWW  W  WWWWWWW  W  W  WWWW  WWWW
W        W  W                 W        W  W  W  W  W        W     W  W     W     W        W        W  W     W     W        W     W     W     W        W
WWWWWWWWWW  W  WWWWWWWWWWWWW  WWWW  WWWW  W  W  W  WWWWWWW  W  W  WWWW  WWWWWWW  WWWWWWW  W  WWWWWWW  WWWWWWW  WWWW  WWWWWWWWWW  W  WWWWWWWWWW  W  W  W
W           W  W     W           W        W     W  W  W     W  W        W        W        W           W        W  W        W        W     W     W  W  W
W  WWWWWWWWWW  W  W  W  WWWW  W  WWWWWWWWWW  WWWW  W  W  WWWW  WWWWWWWWWW  WWWWWWW  WWWWWWWWWWWWWWWWWWW  WWWWWWW  WWWWWWW  W  WWWWWWW  W  W  WWWW  W  W
W  W  W        W  W  W  W     W           W        W  W  W  W              W     W  W           W     W        W        W  W     W     W  W  W     W  W
W  W  W  WWWW  W  W  W  WWWWWWWWWWWWWWWW  WWWWWWWWWW  W  W  W  W  WWWWWWWWWWWWW  W  WWWWWWWWWW  W  W  WWWWWWW  WWWWWWW  W  W  W  WWWWWWW  W  WWWWWWW  W
W  W     W     W  W        W           W        W     W  W     W     W           W        W     W  W     W     W     W     W  W  W        W     W     W
W  WWWWWWWWWWWWW  WWWWWWW  W  WWWWWWWWWW  W  WWWW  WWWW  WWWWWWWWWWWWW  WWWWWWW  WWWW  WWWW  WWWW  W  WWWW  WWWW  W  WWWWWWW  W  W  WWWWWWWWWW  W  WWWW
W                 W     W  W           W  W  W           W              W           W     W     W  W  W     W     W     W     W     W     W     W     W
WWWW  WWWWWWWWWWWWW  WWWW  WWWWWWWWWW  W  W  W  WWWWWWWWWW  WWWWWWW  WWWW  WWWW  WWWWWWW  W  W  W  W  W  WWWWWWW  WWWW  WWWWWWW  WWWW  WWWW  WWWW  W  W
W                 W                 W     W     W           W           W     W              W     W     W           W              W        W     W EW
WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
INPUT
  )
  level.generate_new_password!
end

# interview question name: adding
Level.find_or_initialize_by(name: 'adding', index: 0).tap do |level|
  level.update!(
    input: <<-INPUT
1
2
INPUT
  )
end

Level.find_or_initialize_by(name: 'adding', index: 1).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
1
2
3
INPUT
  )
  level.generate_new_password!
end

# interview question name: jumping game
Level.find_or_initialize_by(name: 'jumping', index: 0).tap do |level|
  level.update!(
    input: <<-INPUT
2
3
1
1
4
INPUT
  )
end

Level.find_or_initialize_by(name: 'jumping', index: 1).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
3
2
1
1
4
INPUT
  )
  level.generate_new_password!
end

Level.find_or_initialize_by(name: 'jumping', index: 2).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
1
1
1
1
1
INPUT
  )
  level.generate_new_password!
end

Level.find_or_initialize_by(name: 'jumping', index: 3).tap do |level|
  level.assign_attributes(
    input: <<-INPUT
5
INPUT
  )
  level.generate_new_password!
end
