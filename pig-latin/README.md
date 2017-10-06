# Pig Latin

##Summary
In this challenge, we're going to practice building to a specification—in this case a description of the rules of *pig latin*, a sort of secret language based on English words.  Not everyone speaks the same dialect of pig latin; in other words, the rules for converting a word from English to pig latin can differ.  Our rules might be different from someone else's rules.  In this challenge, we're presented with a description of pig latin that needs to be implemented in code.  Regardless of our personal rules for pig latin, we need to implement the rules described.


### Building to a Specification
<img src="readme-assets/tree_comic.jpg" width="600">

*Figure 1*.  Comic depicting problems in translating specifications to a product.

Here's a story every programmer knows. George comes up to us one day and asks, "I have an idea for a script, but I don't want to write it. Will you, my talented programmer friends, do it for me?"  If we agree to help George, we'll need to understand what he wants, working with him to detail the specifications for the product we're going to build.

As programmers, we are expected to build code from various sources: [user stories](http://en.wikipedia.org/wiki/User_story), [wireframes](http://en.wikipedia.org/wiki/Website_wireframe), [pseudocode](http://en.wikipedia.org/wiki/Pseudocode), etc. It's important that we are able to translate these specifications into a functioning program.  Unfortunately, sometimes this process goes awry (see Figure 1).

In this process, we need to understand the value of each specification medium. Pseudocode, for example, is primarily used to communicate the essence of an algorithm without getting bogged down in language-specific syntax. A good programmer can take well-written pseudocode and translate it into code in whatever language.


##Releases

### Release 0: Convert One Word

```text
CONVERT SINGLE WORD

IF the word starts with a vowel, return the word.
ELSE return the word's pig latin equivalent.
  MOVE all leading consonants to the end of the word
  and add the suffix "ay."
ENDIF
```
*Figure 2*.  Pseudocode for converting a word to pig latin.


In Figure 2 is pseudocode for a `convert_word_to_pig_latin` method.  Read through the pseudocode to understand the desired behavior of the method.  How does it behave when a word begins with a vowel?  How does it behave when a word begins with one or more consonants?  Then, write tests in `pig_latin_spec.rb` that will prove that your code is working as intended.  Write code to accomplish the expectations laid out in the pseudocode and described in the tests.


### Release 1: Convert a Sentence

```text
CONVERT COMPLETE SENTENCE

FOR each word in the sentence.
  CONVERT SINGLE WORD
ENDFOR
RETURN converted sentence
```
*Figure 3*.  Pseudocode for converting a sentence to pig latin.


In Figure 3 is pseudocode for a `convert_sentence_to_pig_latin` method.  Read through the pseudocode to understand the desired behavior of the method.  Then, write tests in `pig_latin_spec.rb` that will prove that your code is working as intended.  Write code to accomplish the expectations laid out in the pseudocode and described in the tests.


## Conclusion
Understanding what is expected of us and translating that understanding to code can be difficult.  The difficulty often lies not in the coding, but in the communication.  In this challenge, the specifications for our product are fairly concise and have been laid out in writing.  But, often we'll have to patiently work with people to really understand what they need.
