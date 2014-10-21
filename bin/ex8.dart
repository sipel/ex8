import "ex8_function.dart";

void main() {
  /*En utilisant la même liste pour la question 8.1 et la premiere partie de la question 8.2.
   * Create a list of associations of members, where a member is represented as 
   * a map with the following keys: firstName, lastName and email. 
   * Sort the list of members of a given association first by the last name, 
   * then by the first name. 
   * Provide a way to obtain only members of all associations whose last name starts 
   * with a given letter. 

associations = [
  {“name”: “IS”, “description”: “Information Systems”, “members”: 
   [{“firstName”: “Dzenan”, “lastName”: “Ridjanovic”, “email”: “dr@gmail.com”},
    {“firstName”: “Robert”, “lastName”: “Nelson”, “email”: “rn@gmail.com”}]},
  {“name”: “CS”, “description”: “Computer Science”,  “members”: 
   [{“firstName”: “David”, “lastName”: “Curtis”, “email”: “dc@gmail.com”}]}
]
  */
  print ("Question 1");
  var membres = [
    {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic","email": "dr@gmail.com"},
    {"associationName": "IS","firstName": "Robert","lastName": "Nelson","email": "rn@gmail.com"},
    {"associationName": "CS","firstName": "David","lastName": "Curtis","email": "dc@gmail.com"},
    ];
  
  print ("Sort by last name");
  print (sortByLastName(membres));

  print ("Sort by first name");
  print (sortByFirstName(membres));
  
  print ("Sort by last name starting with the letter N");
  var lettre = "N";
  print (sortByLastNameLetter(membres, lettre));
  print ("");
 
  print ("Question 2");
  /*
   * Create a class model with associations and members. 
   * The same member may belong to different associations. 
   * Provide the maintenance of the model by providing additions, 
   * removals and updates of entities
   */
  
  print ("add a member");
  print (ajoutMem(membres, "CS", "Simon", "Pelletier", "sp@gmail.com"));
  
  print ("remove a member");
  var givenEmail = "rn@gmail.com";
  print (deleteMem(membres, givenEmail));
  
  print ("Change on a member");
  print (changeMem(membres, "CS", "David", "Curtis", "david@gmail.ca"));
  // Change the email
}