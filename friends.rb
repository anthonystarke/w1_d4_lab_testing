

def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
     if (snack == food)
       return true
    end
  end
  return false
end

def add_friend(person, name)
  person[:friends] << name
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def money_loan(lendee, lender, money)
  lendee[:monies] -= money
  lender[:monies] += money
end

def add_snacks(people)
  snacks = []
  for person in people
    for snack in person[:favourites][:snacks]
      snacks << snack
    end
  end
  return snacks
end

def no_friend_people(people)

  list_of_people = []

  for person in people
    if person[:friends].length == 0
      list_of_people << person[:name]
    end
  end
  return list_of_people
end
