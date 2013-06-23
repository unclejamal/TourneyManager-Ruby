Transform(/^System$/) do |impersonator|
  a_system
end

Transform(/^Spectator$/) do |impersonator|
  a_spectator
end

Transform(/^He$/) do |impersonator|
  current_impersonator
end

Transform(/^She$/) do |impersonator|
  current_impersonator
end

Transform(/^It$/) do |impersonator|
  current_impersonator
end

Transform(/^They$/) do |impersonator|
  current_impersonator
end
