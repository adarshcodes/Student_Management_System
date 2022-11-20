
package classes;

import java.util.Random;

public class quotes {
     public static String quote()
             
{ String thoughts[]={
                   // 1.  
                      " \"Don't Confuse Schooling with Education.\n" +
                      "  I didn't go to Havard but those people \n" +
                         "         who work for me did\"\n" +
                                           
                                  "                    -Elon Musk.",
                     // 2. 
                        "\"As long as you savor the humorous aspect\n" +
                        "       of misery and misfortune,\n" +
                         "       You Can Overcome Anything.\"\n" 
                         
                                                +  " -John Canedy",
                     // 3.   
                                 "\"A hungry stomach, an empty\n" +
                                  " wallet and a broken heart\n" +
                                " can teach you the best lessons\n" +
                                            "of life\"\n" +
                                                    
                                                    "    -Robin Williams",
                      // 4.
                               "\"Everyone you meet always asks if\n" +
                                  "you have a career,are married or\n" +
                                   "own a house as if life is some \n" +
                                   "kind of grocery list. But No One\n" +
                                  " Ever Asks You If You Are Happy\"\n" +
"                                                    "
                                                +     " -Heath Ledger.",
                       //5.
                                  "\"You can't cahnge how people treat you \n" +
                                "or what they say about you.All you can do is \n" +
                                     "change how you react to it.\"\n" +
                                              "-Mahatma Gandhi",
                       // 6.
                                "\"Those who can't change their minds\n" +
                                   "they can't change anything.\"\n" +
                                       "-George Bernard Shaw",
                        // 7. 
                                  "\"The man who asks a question is a fool\n" +
                                           "   for a minute.\n" +
                                   "The man who does not ask is a fool for life.\"\n" +
                                                             "-Confucius",
                        // 8.
                                      "\"We all pay for life with death,\n" +
                                       "so everything in between should be\n" +
                                                "    FREE\"\n" +
                                                   "-Bill Hicks",
                         // 9.
                                      "\"you will never reach your destination\n" +
                                       "if you stop and throw stones at every \n" +
                                                   "dog that barks.\"\n" +
                                                            "-Winston churchill",
                          //10.
                                       "\"The beautiful thing about learning is \n" +
                                          "nobody can take it away from you.\"\n" +
                                                                  "-B.B King",
                          // 11.
                                       "\"No great mind has ever existed without\n" +
                                                "a touch of madness.\"\n" +
                                                                  "-Aristotle",
                           // 12. 
                                         "\"No one is more hated \n" +
                                            "than he who speaks \n" +
                                                 "The truth!\"\n" +
                                                          "-Plato",
                            // 13.
                                             "\"Life itself is your teacher,\n" +
                                                 "and you are in a state\n" +
                                                "of constant learning.\"\n" +
                                                  "        -Bruce Lee.",
                             //14.
                                              "\"It is not the strongest or the most\n" +
                                                 "intelligent who will survive but\n" +
                                                "those who can best manage change.\"\n" +
                                           "                -Charles Darwin.",
                             //15.
                                         "\"find what you Love and\n" +
                                             "let it Kill you.\"\n" +
                                               "     -Bukowski.",
                              //16.
                                                 "\"Education is not the learning of facts,\n" +
                                                "but the training of the mind to think.\"\n" +
                                    "                      -Albert Einstein.",
                              //17.
                                           "\"Be a LONER.\n" +
                                       "That gives you time to wonder,\n" +
                                           "to search for the truth.\n" +
                                             "Have holy curiosity.\n" +
                                         "Makes your life worth living.\"\n" +
                                        "         -Albert Einstein.",
                               //18.
                                        "\"If friendship is your weakest point \n" +
                                           " then you are the Strongest person \n" +
                                               "     in the world\"\n" +
                                                                "  -Abraham Lincoln",
                                //19
                                              "To know if a person is \n" +
                                            "interested in a conversation,\n" +
                                                  "cross your arms.\n" +
                                     "If they do the same then they're interested..",
                                 //20. 
                                               "People who use swear words regularly,\n" +
                                                    "tend to be \n" +
                                           "stronger emotionally and more intelligent..",
                                //21.
                                            "when you talk to yourself you\n" +
                                            "are making yourself \"Smarter\".",
                                //22.
                                                "\"Don't let other Define you.\n" +
                                                 "Make your own Definations,\n" +
                                                  "to Define 'YOURSELF'.\"\n" +
                                                "      -Adarsh Pr. Singh"};
                             
                           

 String ra=(thoughts[new Random().nextInt(thoughts.length)]);
return ra;

}
}



