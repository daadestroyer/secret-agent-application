#RULES:
#------
#1) The first character of the name should be 's'
#2) The first character of the favourite character should be 'r'
#3) Lucky no should be 7
#4) The number of character in his favourite dish should be >=6
#If the above condition are satisfied then user is valid secret agent and share information about our next operation , otherwise just send thanks message

#! /bin/bash
echo "WELCOME TO SECRET AGENT APPLICATION"
echo "########################"
read -p "Enter agent name : " AGENT_NAME
FIRST_CHARACTER_OF_NAME=$(echo -n $AGENT_NAME | cut -c 1)
if [ $FIRST_CHARACTER_OF_NAME != "s" ]; then
   echo "*********************************************"
   echo "Hello $AGENT_NAME thank you for information..."
   echo "*********************************************"
   exit 1
fi

read -p "Enter agent favourite actor : " ACTOR
len=$(echo -n $ACTOR | wc -c)
ACTOR_LAST_CHARACTER=$(echo -n $ACTOR | cut -c $len)
if [ $ACTOR_LAST_CHARACTER != "r" ]; then
   echo "*********************************************"
   echo "Hello $AGENT_NAME thank you for information..."
   echo "*********************************************"
   exit 1
fi   

read -p "Enter agent lucky number : " LUCKY_NUMBER
if [ $LUCKY_NUMBER -ne 7 ]; then
   echo "*********************************************"
   echo "Hello $AGENT_NAME thank you for information..."
   echo "*********************************************"
   exit 1
fi   

read -p "Enter agent favourite dish : " DISH
NUM_OF_CHARACTER_IN_DISH=$(echo -n $DISH | wc -c)
if [ $NUM_OF_CHARACTER_IN_DISH -lt 6 ]; then
   echo "*********************************************"
   echo "Hello $AGENT_NAME thank you for information..."
   echo "*********************************************"
   exit 1
fi 
echo "*********************************************"
echo "Hello Secret $AGENT_NAME"
echo "We have to kill atleast 10 terrorist in India"
echo "**********************************************"   
