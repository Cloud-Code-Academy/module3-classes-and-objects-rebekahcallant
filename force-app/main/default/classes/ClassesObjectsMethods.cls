/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Rebekah Callant
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
   public static List<String> practiceStringMethods() {
    // Initialize a String with 'Hello, Salesforce!'
    String practiceString = 'Hello, Salesforce!';
    List<String> results = new List<String>();

    // Get the length of the String and add it to the list
    results.add(String.valueOf(practiceString.length()));

    // Get a substring of the String of the first 5 characters and add it
    results.add(practiceString.substring(0, 5));

    // Convert the String to lower case and add it
    results.add(practiceString.toLowerCase());

    // Return the results list
    return results;
}


    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
   public static List<Boolean> checkStringContent(String input) {
    // Initialize a list to store the results
    List<Boolean> results = new List<Boolean>();

    // Check if the string starts with 'Sales'
    results.add(input.startsWith('Sales'));
    // Check if the string ends with 'Force'
    results.add(input.endsWith('Force'));
    // Check if the string contains 'Awesome'
    results.add(input.contains('Awesome'));

    return results;
}


    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        List<String> words = sentence.split(' ');
        // Create a set to store the unique words
        Set<String> uniqueWords = new Set<String>();        
        // Add each word to the set
        for (String word : words) {
            uniqueWords.add(word);
        }
        // Join the unique words back into a sentence
        String result = String.join(new List<String>(uniqueWords), ' ');
        // Return the sentence with unique words
        return result;
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
   public static Integer countVowels(String s) {
    if (String.isBlank(s)) {
        return 0;
    }
    
    Integer count = 0;
    String lowerCaseString = s.toLowerCase();
    List<String> vowels = lowerCaseString.split('');
    
    for (Integer i = 0; i < vowels.size(); i++) {
        String c = vowels[i];
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            count++;
            System.debug('** Value of Count: ' + count);
            System.debug('** Value of C: ' + c);
        }
    }
    
    return count;
}


    

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
    List<String> scientistNames = new List<String>{
        'Tim Berners-Lee',
        'Alan Turing',
        'Grace Hopper',
        'Donald Knuth',
        'Guido van Rossum',
        'Ken Thompson',
        'Stephen Hawking'
    };
    
    List<String> matched = new List<String>();
    
    for (String name : scientistNames) {
        if (name.toLowerCase().contains('g')) {
            matched.add(name);
        }
    }
    
    return String.join(matched, ',');
}


    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */

    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        if(a == null || b== Null){
            return null;
        }
        Double squareA = Math.pow(a,2);
        Double squareB = Math.pow(b,2);
        return Math.abs(squareA - squareB);
    }
        

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
    // Generate a random double between 0.0 and 1.0
    Double rand = Math.random();

    // Scale to range 50–100
    Integer randomNumber = 50 + (Integer)Math.floor(rand * 51);

    return randomNumber;
}


    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
    Date currentDate = Date.today();
    String formattedDate = currentDate.format();
    return formattedDate;
}


    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
    if (dt == null) {
        return null;
    }
    
    // Map of day names to numbers
    Map<String, Integer> dayOfWeek = new Map<String, Integer>{
        'Monday' => 1,
        'Tuesday' => 2,
        'Wednesday' => 3,
        'Thursday' => 4,
        'Friday' => 5,
        'Saturday' => 6,
        'Sunday' => 7
    };
    
    // Get the full day name from the DateTime
    String dayName = dt.format('EEEE');
    
    // Look up the number
    Integer dayNumber = dayOfWeek.get(dayName);
    
    return String.valueOf(dayNumber);
}


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        if (d1 == null || d2 == null) return null;
        return Math.abs(d1.year() - d2.year());
    }


    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
    public String title;
    public String author;
    public Integer pages;

    // No-argument constructor
    public Book() {}

    // Constructor with 2 parameters
    public Book(String title, String author) {
        this.title = title;
        this.author = author;
        this.pages = null; // optional
    }

    // Constructor with 3 parameters
    public Book(String title, String author, Integer pages) {
        this.title = title;
        this.author = author;
        this.pages = pages;
    }

    // Setters
    public void setTitle(String t) { this.title = t; }
    public void setAuthor(String a) { this.author = a; }
    public void setPages(Integer p) { this.pages = p; }

    // Getters
    public String getTitle() { return title; }
    public String getAuthor() { return author; }
    public Integer getPages() { return pages; }

    // Method to return book details
    public String getBookDetails() {
        if (pages != null) {
            return 'Title: ' + title + ', Author: ' + author + ', Pages: ' + pages;
        } else {
            return 'Title: ' + title + ', Author: ' + author;
        }
    }
}

        

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    
public static String createAndGetBookDetails() {
    Book book = new Book();
    
    book.setTitle('A Brief History of Time');
    book.setAuthor('Stephen Hawking');
    

    return book.getBookDetails();
}


    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
    List<Book> bookList = new List<Book>();

    // update mybook1    
    mybook1.setTitle('Harry Potter and the Chamber of Secrets');
    mybook1.setAuthor('J.K. Rowling');
    mybook1.setPages(352);
   

    // Second book
    Book book2 = new Book();
    book2.setTitle('A Brief History of Time');
    book2.setAuthor('Stephen Hawking');
    

    // Add the generated books
    bookList.add(mybook1);
    bookList.add(book2);
    System.debug(bookList);

    return bookList;   
}


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */

    public class Person {
        private String name;
        private Integer age;

        public Person(String name, Integer age) {
            this.name = name;
            this.age = age;
        }

        public String getName() { return name; }
        public Integer getAge() { return age; }
        public void setAge(Integer newAge) { this.age = newAge; }

        public String getDetails() {
            return 'Name: ' + name + ', Age: ' + age;
        }
    }

    public static List<String> personDetails() {
        Person p = new Person('John Doe', 28);
        List<String> details = new List<String>();
        details.add('Hello, my name is ' + p.getName() + ' and I am ' + p.getAge() + ' years old.');
        details.add(p.getName());
        details.add(String.valueOf(p.getAge()));
        return details;
    }

    public static Person createPerson(String name, Integer age) {
        return new Person(name, age);
    }

    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> people = new List<Person>();
        if (names != null) {
            for (String n : names) {
                people.add(new Person(n, age));
            }
        }
        return people;
    }



    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

      public List<String> personDetails2() {
        // If Person is top-level, use: new Person('John Doe', 28);
        Person p = new Person('John Doe', 28);

        List<String> details = new List<String>();
        details.add('Hello, my name is ' + p.getName() + ' and I am ' + p.getAge() + ' years old.');
        details.add(p.getName());
        details.add(String.valueOf(p.getAge()));
        return details;
    }
   

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public Person createPerson2(String name, Integer age) {
    return new Person(name, age);
}

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public List<Person> createMultiplePersons2(List<String> names, Integer age) {

    List<Person> people = new List<Person>();
    for (String n : names) {
        people.add(new Person(n, age));
    }
    return people;
}


    /**
         * Question 18
         * Compare two Person objects based on their ages.
         * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
         * If they are the same age, return either.
         *
         * @param person1 The first Person object.
         * @param person2 The second Person object.
         * @return The Person object of the older person.
         */
    public Person getOlderPerson(Person person1, Person person2) {
        if (person1 == null) return person2;
        if (person2 == null) return person1;
        return (person1.getAge() > person2.getAge()) ? person1 : person2;
    }
}

