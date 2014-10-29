library ex8_function;

// Question 1
sortByLastName(var membres) {
  membres.sort((x, y) => x["lastName"].compareTo(y["lastName"]));
  for (var element in membres) {
    print(element);
  }
  return ("");
}

sortByFirstName(var membres) {
  membres.sort((x, y) => x["firstName"].compareTo(y["firstName"]));
  for (var element in membres) {
    print(element);
  }
  return ("");
}

sortByLastNameLetter(var membres, var lettre) {
  List lastNameLetter = new List();

  for (var i = 0; i < membres.length; i++) {
    Map lastNameGetter = membres[i];
    var nomfamille = lastNameGetter["lastName"];
    if (nomfamille.startsWith(lettre)) {
      lastNameLetter.add(lastNameGetter);
    }
  }
  return (lastNameLetter);
}

// Question 2
ajoutMem(var membres, var associationName, var firstName, var lastName, var email) {
  membres.add({
    "associationName": associationName,
    "firstName": firstName,
    "lastName": lastName,
    "email": email
  });
  for (var element in membres) {
    print(element);
  }
  return ("");
}

deleteMem(var membres, var givenEmail) {
  for (var i = 0; i < membres.length; i++) {
    Map deletemembre = membres[i];
    var email = deletemembre["email"];
    if (email == givenEmail) {
      membres.remove(deletemembre);
    }
  }
  for (var element in membres) {
    print(element);
  }
  return ("");
}

changeMem(var membres, var associationName, var firstName, var lastName, var email) {
  for (var i = 0; i < membres.length; i++) {
    if (membres[i]["firstName"] == firstName && membres[i]["lastName"] == lastName) {
      membres[i]["associationName"] = associationName;
      membres[i]["firstName"] = firstName;
      membres[i]["lastName"] = lastName;
      membres[i]["email"] = email;
    }
  }
   for (var element in membres) {
    print(element);
  }
  return ("");
}