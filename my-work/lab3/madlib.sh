
#!/bin/bash

clear
echo "Let's build a mad-lib!"

# User prompts to fill in the madlib
read -p "1. Name an adjective: " ADJ1
read -p "2. Name an adjective: " ADJ2
read -p "3. Name a type of bird: " BIRD
read -p "4. Name a place in your home: " ROOM
read -p "5. Name a verb (past tense): " VERB1
read -p "6. Name a verb: " VERB2
read -p "7. Name a person: " PRSON
read -p "8. Name a noun: " NOUN1
read -p "9. Name a liquid: " LQD
read -p "10. Name a verb ending in -ing: " VERB3
read -p "11. Name a body part (plural): " BODY
read -p "12. Name a noun (plural): " NOUN2
read -p "13. Name a verb ending in -ing: " VERB4
read -p "14. Name a noun: " NOUN3

# Reading out the madlib
read -p "It was a $ADJ1, cold November day. I woke up to the $ADJ2 smell of $BIRD roasting in the $ROOM downstairs. I $VERB1 down the stairs to see if I could help $VERB2 the dinner. My mom said, 'See if $PRSON needs a fresh $NOUN1.' So I carred a tray of glasses full of $LQD into the $VERB3 room. When I got there, I couldn't believe my $BODY! There were $NOUN2 $VERB4 on the $NOUN3!" 
