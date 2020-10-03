#!/bin/bash


 RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
F_VDOBLE="\033#6"


name()
{

 clear
echo ""
echo "    ${green}************************************************************************************************************" 
printf "        "
for var in w e l c o m e   
do  sleep .1
printf  "${YELLOW}${F_VDOBLE}$var"
done
echo " "
echo " "

printf "                   "
for var in T o
do  sleep .1
printf "${YELLOW}${F_VDOBLE}$var"
done
echo ""
echo " "
echo " "
printf "                         "
for var in L i n u x  
do  sleep .1 
printf "${F_VDOBLE}$var"
done
printf " "

for var in   T u t o r i a l
do  sleep .1 
printf "${F_VDOBLE}$var"
done
echo ""
echo "   ${green} ************************************************************************************************************" 
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "                                                                                         Project By"
 echo -e "                                                                                         ${red}Shubham ${reset} ${YELLOW}&${reset} ${green}Kartik ${reset}"
 read temp
 loginOption
}

loginOption()
{
 clear
 echo ""
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					    OPTIONS					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo -e "		*				 ->  ${YELLOW}PRESS 1 for REGISTRATION !			                	*${reset}"
 echo -e "		*				 -> ${GREEN} PRESS 2 for SIGN IN !						*${reset}"
 #echo "		*				 ->  PRESS 3 for DETAILS OF SOFTWARES & PROGRAMMERS's TEAM !		*"
 echo -e "		*				 ->  ${RED}PRESS 3 for EXIT !							*${reset}"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 options
}

options()
{
 read choice
 case $choice in
 1) registrationpage
 logInPage
 mainMenu;;
 2) logInPage
 mainMenu;;
 3) clear
 exit ;;
 *) 
 clear
 loginOption
 
 esac
}

registrationpage()
{
 clear
 echo "								REGISTRATION"
 echo "							       ~~~~~~~~~~~~~~"
 echo ""
 echo ""
 echo ""
 echo "Enter Your Name : "
 echo ""
 read nameUser
 echo ""
 while [ 1 ]
 do
 echo "Enter any Registration-ID :"
 echo ""
 read emailIdUser
 exist=`grep -i -w -n $emailIdUser ID.sh| cut -d : -f 1`
 if ! expr "$exist" : '[0-9][0-9]*$'>/dev/null;
 then
 break
 fi
 echo "	**************************************************************************************************************************"
 echo "	*		           This Register-ID is ALREADY REGISTERED ! Plzz Enter any other Registered-ID.		       		 *"
 echo "	**************************************************************************************************************************"
 done
 echo ""
 echo "Enter your College Name : "
 echo ""
 read collegeName
 echo ""
 echo "Enter your Class : "
 echo ""
 read class
 while [ 1 ]
 do
 echo ""
 echo "SET PASSWORD :"
 echo ""
 echo "Enter any Password : "
 echo ""
 read password
 echo ""
 echo "Confirm your Password : "
 echo ""
 echo "Re-enter : "
 echo ""
 read rePassword
 if [ "$password" = "$rePassword" ]
 then
 echo "$password" >> PASSWORD.sh				
 break
 fi
 done
 clear
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo "	**************************************************************************************************************************"
 echo "	*					   	 Your REGISTRATION-ID : $emailIdUser		       		 *"
 echo "	**************************************************************************************************************************"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 read temp
 clear				
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo "	**************************************************************************************************************************"
 echo "	*					   	 CONGRATULATIONS ! SUCCESFULLY REGISTERED.		  	     	 *"
 echo "	**************************************************************************************************************************"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 read temp
 clear
 echo " Name : $nameUser " >> Record.sh 
 echo "	Gmail : $emailIdUser " >> Record.sh 
 echo " Class : $class " >> Record.sh 
 echo " College : $collegeName " >> Record.sh 
 echo " REGISTRATION ID : $emailIdUser " >> Record.sh 
 echo "	PASSWORD : $password" >> Record.sh
 echo "$emailIdUser" >> ID.sh
}

logInPage()
{
 clear
 echo "								LOGIN"
 echo "							       ~~~~~~~"
 echo ""
 echo ""
 echo "Enter your Registration Id : "
 echo ""
 read RID 
 echo ""
 grep -i -w "$RID" ID.sh > Check.sh
 exist=`grep -i -w -n $RID ID.sh| cut -d : -f 1`
 
 if  expr "$exist" : '[0-9][0-9]*$'>/dev/null;
 then
 echo "Enter Password : "
 echo ""
 stty -echo
 read PASSW
 stty echo
 originalPassword=`head -$exist PASSWORD.sh | tail -1`
 if [ $originalPassword == $PASSW ]
 then
 clear			
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo "	**************************************************************************************************************************"
 echo "	*					   	 CONGRATULATIONS ! SUCCESFULLY LOGIN.			  	     	 *"
 echo "	**************************************************************************************************************************"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 read temp
 else 
 clear
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo "	**************************************************************************************************************************"
 echo "	*					      Invalid Input ! Wrong PASSWORD Entered.			  	     	 *"
 echo "	**************************************************************************************************************************"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 read temp
 logInPage
 fi
 else 
 clear
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo ""
 echo "	**************************************************************************************************************************"
 echo "	*					   Invalid Input ! Wrong REGISTRATION-ID Entered.		  	     	 *"
 echo "	**************************************************************************************************************************"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE"
 read temp
 logInPage
 fi 
}

mainMenu()
{
 clear
 echo ""
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for TUTORIALS !			                	*"
 echo "		*			        ->  PRESS 2 for MCQ's TEST PRACTICE !			   	        *"
 echo "		*				 ->  PRESS 3 for LOGOUT !			 	   	        *"
 echo "		*				 ->  PRESS 4  for EXIT !	  	                                *"
 echo "         	*									                                *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 mainMenuOptions
}

mainMenuOptions()
{
 read choice
 case $choice in
 1) clear
 tutorialMenu ;;
 2) clear
 testPracticeMenu  ;;
 3) clear
 loginOption ;;
 4) clear
 exit ;;
 
 *) clear 
 mainMenu
 esac
}


tutorialMenu()
{
 echo "							   TUTORIALS"
 echo "					       	          ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for TUTORIAL OF LINUX/UNIX !			       	*"
 echo "		*			         ->  PRESS 2 for TUTORIAL OF DATA STRUCTURE !		   	        *"
 echo "		*			       	 ->  PRESS 3 for TUTORIAL OF OPERATING SYSTEM !			        *"
 #echo "		*				 ->  PRESS 5 for TUTORIAL OF GENERAL KNOWLEDGE ! 	   	        *"
 echo "		*				 ->  PRESS 4 for TUTORIAL OF C LANGUAGE !	   	 	        *"
 echo "		*				 ->  PRESS 5 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 6 for EXIT ! 						*"
 echo "                *                                ->  PRESS 7 for PREVIOS MENU                                           * "
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 tutorialMenuOptions 
}


tutorialMenuOptions()
{
 read choiceTutorial
 case $choiceTutorial in
 1) clear 
 cat unixTutorial 
 read temp
 clear
 cat unixTutorial1
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial2
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial3
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial4
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial5
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial6
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial7
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial8
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial9
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat unixTutorial10
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 tutorialMenu;; 
 3) clear 
 cat OSTutorial 
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial1
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial1
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial2
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial3
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial4
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial5
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial6
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial7
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial8
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial9
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat OSTutorial10
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 tutorialMenu;; 
 2) clear 
 cat DSTutorial 
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial1
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial2
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial3
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial4
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial5
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial6
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial7
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial8
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat DSTutorial9
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 tutorialMenu;; 
 4) clear 
 cat CTutorial 
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial1
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial2
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial3
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial4
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial5
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial6
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial7
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial8
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial9
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 cat CTutorial10
 echo ""
 echo ""
 echo "							PRESS ENTER KEY TO CONTINUE !"
 read temp
 clear
 tutorialMenu;; 
 5) clear
 mainMenu;;
 6) clear
 exit ;;
 *) clear
 mainMenu
 esac
}

testPracticeMenu()
{
 echo "								MCQ's SUBJECT MENU"
 echo "					       	               ~~~~~~~~~~~~~~~~~~~~"
 echo ""
 echo ""
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for TEST PRACTICE OF LINUX/UNIX !			       	*"
 echo "		*			         ->  PRESS 2 for TEST PRACTICE OF DATA STRUCTURE !		        *"
 echo "		*			       	 ->  PRESS 3 for TEST PRACTICE OF OPERATING SYSTEM !		        *"
 echo "		*				 ->  PRESS 4 for TEST PRACTICE OF OF C++ !		   	        *"
 echo "		*				 ->  PRESS 5 for TEST PRACTICE OF OF C LANGUAGE !	 	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 7 for EXIT ! 						*"
 echo "                *                                ->  PRESS 8 for PREVIOS MENU                                           *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 testPracticeMenuOptions
}

testPracticeMenuOptions()
{
 read choiceTest
 case $choiceTest in
 1)clear 
 unixTestMenu
 testPracticeMenu;;
 2) clear
 dataStructureTestMenu
 testPracticeMenu;;
 3) clear
 osTestMenu
 testPracticeMenu;;
 4) clear
 oopsTestMenu
 testPracticeMenu;;
 5) clear
 cTestMenu 
 testPracticeMenu;;
 6) clear
 mainMenu;;
 7) clear
  exit;;
 *)clear
 mainMenu 
 esac
}

osTestMenu()
{
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for FIRST TEST PRACTICE OF OPERATING SYSTEM !	       	*"
 echo "		*			         ->  PRESS 2 for SECOND TEST PRACTICE OF OPERATING SYSTEM !	        *"
 echo "		*			       	 ->  PRESS 3 for THIRD TEST PRACTICE OF OPERATING SYSTEM !	        *"
 echo "		*				 ->  PRESS 4 for FORTH TEST PRACTICE OF OPERATING SYSTEM !	        *"
 echo "		*				 ->  PRESS 5 for FIFTH TEST PRACTICE OF OPERATING SYSTEM !	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU OF MCQ's TEST PRACTICE !	 	        *"
 echo "		*				 ->  PRESS 7 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 8 for EXIT ! 						*"
 echo "                *                                ->  PRESS 9 for PREVIOS MENU                                           *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 osTestMenuOptions 
}

osTestMenuOptions()
{
 read choiceOopsTest
 case $choiceOopsTest in
 1) clear
 firstOsTest
 osTestMenu ;;
 2) clear
 secondOsTest
 osTestMenu ;;
 3) clear
 thirdOsTest
 osTestMenu ;;
 4) clear
 forthOsTest
 osTestMenu;;
 5) clear
 forthOsTest
 osTestMenu;;
 6) clear
 testPracticeMenu;;
 7) clear
 mainMenu;;
 8) clear
 exit;;
 *) clear
 testPracticeMenu
 esac
}

firstOsTest()
{
 clear
 counter=0
 echo "								FIRST TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. What is operating system?
a) collection of programs that manages hardware resources
b) system service provider to the application programs
c) link to interface the hardware and application programs
d) all of the mentioned"  #d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. To access the services of operating system, the interface is provided by the
a) System calls
b) API
c) Library
d) Assembly instructions"  #a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "3. Which one of the following is not true?
a) kernel is the program that constitutes the central core of the operating system
b) kernel is the first part of operating system to load into memory during booting
c) kernel is made of various modules which can not be loaded in running operating system
d) kernel remains in the memory during the entire computer session"   #c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. Which one of the following error will be handle by the operating system?
a) power failure
b) lack of paper in printer
c) connection failure in the network
d) all of the mentioned"  #d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "5. What is the ready state of a process?
a) when process is scheduled to run after some execution
b) when process is unable to run until some task has been completed
c) when process is using the CPU
d) none of the mentioned"  #a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. What is interprocess communication?
a) communication within the process
b) communication between two process
c) communication between two threads of same process
d) none of the mentioned"      #b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. A set of processes is deadlock if
a) each process is blocked and will remain so forever
b) each process is terminated
c) all processes are trying to kill each other
d) none of the mentioned"     #a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "8. A process stack does not contain
a) Function parameters
b) Local variables
c) Return addresses
d) PID of child process"       #d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "9. Which system call returns the process identifier of a terminated child?
a) wait
b) exit
c) fork
d) get"   #a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "10. The address of the next instruction to be executed by the current process is provided by the
a) CPU registers
b) Program counter
c) Process stack
d) Pipe"		#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
secondOsTest()
{
 clear
 counter=0
 echo "								SECOND TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. The systems which allows only one process execution at a time, are called
a) uniprogramming systems
b) uniprocessing systems
c) unitasking systems
d) none of the mentioned"		#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. In operating system, each process has its own
a) address space and global variables
b) open files
c) pending alarms, signals and signal handlers
d) all of the mentioned"		#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "3. In Unix, Which system call creates the new process?
a) fork
b) create
c) new
d) none of the mentioned"		#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. A process can be terminated due to
a) normal exit
b) fatal error
c) killed by another process
d) all of the mentioned"	#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "5. What is the ready state of a process?
a) when process is scheduled to run after some execution
b) when process is unable to run until some task has been completed
c) when process is using the CPU
d) none of the mentioned"		#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. Mutual exclusion can be provided by the
a) mutex locks
b) binary semaphores
c) both mutex locks and binary semaphores
d) none of the mentioned"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "7. When high priority task is indirectly preempted by medium priority task effectively inverting the relative priority of the two tasks, the scenario is called
a) priority inversion
b) priority removal
c) priority exchange
d) priority modification"		#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "8. Process synchronization can be done on
a) hardware level
b) software level
c) both hardware and software level
d) none of the mentioned"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "9. A monitor is a module that encapsulates
a) shared data structures
b) procedures that operate on shared data structure
c) synchronization between concurrent procedure invocation
d) all of the mentioned"	#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. To enable a process to wait within the monitor,
a) a condition variable must be declared as condition
b) condition variables must be used as boolean objects
c) semaphore must be used
d) all of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
thirdOsTest()
{
 clear
 counter=0
 echo "								THIRD TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. Remote Procedure Calls are used :
a) for communication between two processes remotely different from each other on the same system
b) for communication between two processes on the same system
c) for communication between two processes on separate systems
d) None of the mentioned"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. To differentiate the many network services a system supports ______ are used.
a) Variables
b) Sockets
c) Ports
d) Service names"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "3. RPC provides a(an) _____ on the client side, a separate one for each remote procedure.
a) stub
b) identifier
c) name
d) process identifier"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. The stub :
a) transmits the message to the server where the server side stub receives the message and invokes procedure on the server side
b) packs the parameters into a form transmittable over the network
c) locates the port on the server
d) all of the mentioned"	#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "5. An interrupt vector
a) is an address that is indexed to an interrupt handler
b) is a unique device number that is indexed by an address
c) is a unique identity given to an interrupt
d) none of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. DMA is used for :
a) High speed devices(disks and communications network)
b) Low speed devices
c) Utilizing CPU cycles
d) All of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "7. In a memory mapped input/output :
a) the CPU uses polling to watch the control bit constantly, looping to see if device is ready
b) the CPU writes one data byte to the data register and sets a bit in control register to show that a byte is available
c) the CPU receives an interrupt when the device is ready for the next byte
d) the CPU runs a user written code and does accordingly"	#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "8. In a programmed input/output(PIO) :
a) the CPU uses polling to watch the control bit constantly, looping to see if device is ready
b) the CPU writes one data byte to the data register and sets a bit in control register to show that a byte is available
c) the CPU receives an interrupt when the device is ready for the next byte
d) the CPU runs a user written code and does accordingly"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "9. In an interrupt driven input/output :
a) the CPU uses polling to watch the control bit constantly, looping to see if device is ready
b) the CPU writes one data byte to the data register and sets a bit in control register to show that a byte is available
c) the CPU receives an interrupt when the device is ready for the next byte
d) the CPU runs a user written code and does accordingly"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "10. In the layered approach of Operating Systems :
a) Bottom Layer(0) is the User interface
b) Highest Layer(N) is the User interface
c) Bottom Layer(N) is the hardware
d) Highest Layer(N) is the hardware"	#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
forthOsTest()
{
 clear
 counter=0
 echo "								FORTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. What is the reusable resource?
a) that can be used by one process at a time and is not depleted by that use
b) that can be used by more than one process at a time
c) that can be shared between various threads
d) none of the mentioned"	#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. Which of the following condition is required for deadlock to be possible?
a) mutual exclusion
b) a process may hold allocated resources while awaiting assignment of other resources
c) no resource can be forcibly removed from a process holding it
d) all of the mentioned"	#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "
3. A system is in the safe state if
a) the system can allocate resources to each process in some order and still avoid a deadlock
b) there exist a safe sequence
c) all of the mentioned
d) none of the mentioned"	#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. The circular wait condition can be prevented by
a) defining a linear ordering of resource types
b) using thread
c) using pipes
d) all of the mentioned"	#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "5. Which one of the following is the deadlock avoidance algorithm?
a) banker’s algorithm
b) round-robin algorithm
c) elevator algorithm
d) karn’s algorithm"	#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. What is the drawback of banker’s algorithm?
a) in advance processes rarely know that how much resource they will need
b) the number of processes changes as time progresses
c) resource once available can disappear
d) all of the mentioned"	#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "7. For effective operating system, when to check for deadlock?
a) every time a resource request is made
b) at fixed time intervals
c) every time a resource request is made at fixed time intervals
d) none of the mentioned"	#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. A problem encountered in multitasking when a process is perpetually denied necessary resources is called
a) deadlock
b) starvation
c) inversion
d) aging"	#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "9. Which one of the following is a visual ( mathematical ) way to determine the deadlock occurrence?
a) resource allocation graph
b) starvation graph
c) inversion graph
d) none of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "10. To avoid deadlock
a) there must be a fixed number of resources to allocate
b) resource allocation must be done only once
c) all deadlocked processes must be aborted
d) inversion technique can be used"	#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
fifthOsTest()
{
 clear
 counter=0
 echo "								FIFTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. The number of resources requested by a process :
a) must always be less than the total number of resources available in the system
b) must always be equal to the total number of resources available in the system
c) must not exceed the total number of resources available in the system
d) must exceed the total number of resources available in the system"	#c
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. The request and release of resources are ___________
a) command line statements
b) interrupts
c) system calls
d) special programs"	#c echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "3. Multithreaded programs are :
a) lesser prone to deadlocks
b) more prone to deadlocks
c) not at all prone to deadlocks
d) none of the mentioned"	#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. For a deadlock to arise, which of the following conditions must hold simultaneously ?
a) Mutual exclusion
b) No preemption
c) Hold and wait
d) All of the mentioned"	#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "5. For Mutual exclusion to prevail in the system :
a) at least one resource must be held in a non sharable mode
b) the processor must be a uniprocessor rather than a multiprocessor
c) there must be at least one resource in a sharable mode
d) all of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. For a Hold and wait condition to prevail :
a) A process must be not be holding a resource, but waiting for one to be freed, and then request to acquire it
b) A process must be holding at least one resource and waiting to acquire additional resources that are being held by other processes
c) A process must hold at least one resource and not be waiting to acquire additional resources
d) None of the mentioned"	#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "7. Deadlock prevention is a set of methods :
a) to ensure that at least one of the necessary conditions cannot hold
b) to ensure that all of the necessary conditions do not hold
c) to decide if the requested resources for a process have to be given or not
d) to recover from a deadlock"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "8. For non sharable resources like a printer, mutual exclusion :
a) must exist
b) must not exist
c) may exist
d) none of the mentioned"	#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "9. For sharable resources, mutual exclusion :
a) is required
b) is not required
c) may be or may not be required
c) none of the mentioned"	#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "10. To ensure that the hold and wait condition never occurs in the system, it must be ensured that :
a) whenever a resource is requested by a process, it is not holding any other resources
b) each process must request and be allocated all its resources before it begins its execution
c) a process can request resources only when it has none
d) all of the mentioned"	#d
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
oopsTestMenu()
{
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for FIRST TEST PRACTICE OF C++ !			       	*"
 echo "		*			         ->  PRESS 2 for SECOND TEST PRACTICE OF C++ !			        *"
 echo "		*			       	 ->  PRESS 3 for THIRD TEST PRACTICE OF C++ !			        *"
 echo "		*				 ->  PRESS 4 for FORTH TEST PRACTICE OF C++ !		   	        *"
 echo "		*				 ->  PRESS 5 for MAIN MENU OF MCQ's TEST PRACTICE !	 	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 7 for EXIT ! 						*"
 echo "                *                                ->  PRESS 8 for PREVIOS MENU                                           *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 oopsTestMenuOptions 
}

oopsTestMenuOptions()
{
 read choiceOopsTest
 case $choiceOopsTest in
 1) clear
 firstOopsTest
 oopsTestMenu ;;
 2) clear
 secondOopsTest
 oopsTestMenu ;;
 3) clear
 thirdOopsTest
 oopsTestMenu ;;
 4) clear
 forthOopsTest
 oopsTestMenu;;
 5) clear
 testPracticeMenu;;
 6) clear
 mainMenu;;
 7) clear
 exit;;
 *) clear
 testPracticeMenu 
 esac
}

firstOopsTest()
{
 clear
 counter=0
 echo "								FIRST TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. What is the size of wchar_t in C++?
a) 2
b) 4
c) 2 or 4
d) Based on the number of bits in the system"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "2. Pick the odd one out
a) array type
b) character type
c) boolean type
d) integer type"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "3. Which data type is used to represent the absence of parameters?
a) int
b) short
c) void
d) float"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "4. What does an escape code represent?
a) alert
b) backslash
c) tab
d) form feed"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. Which type is best suited to represent the logical values?
a) integer
b) boolean
c) character
d) all of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. Identify the user-defined types from the following?
a) enumeration
b) classes
c) both enumeration and classes
d) int"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. Which of the following statements are true?

int f(float)
a) f is a function taking an argument of type int and returning a floating point number
b) f is a function taking an argument of type float and returning an integer
c) f is a function of type float
d) none of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. The value 132.54 can be represented using which data type?
a) double
b) void
c) int
d) bool"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "9. When a language has the capability to produce new data type mean, it can be called as
a) overloaded
b) extensible
c) encapsulated
d) reprehensible"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. Pick the odd one out.
a) integer, character, boolean, floating
b) enumeration, classes
c) integer, enum, void
d) arrays, pointer, classes"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

secondOopsTest()
{
 clear
 counter=0
 echo "								SECOND TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. Is bool a fundamental data type in C++?
a) Yes
b) No, it is a typedef of unsigned char
c) No, it is an enum of {false, true}
d) No, it is expanded from macros"
#a
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "2. Find the odd one out:
a) std::vector<int>
b) std::vector<short>
c) std::vector<long>
d) std::vector<bool>"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "3. What is the value of the bool?

bool is_int(789.54)
a) True
b) False
c) 1
d) None of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "4. What happens when a null pointer is converted into bool?
a) an error is flagged
b) bool value evaluates to true
c) bool value evaluates to false
d) the statement is ignored"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. Which of the following statements are false?
a) bool can have two values and can be used to express logical expressions
b) bool cannot be used as the type of the result of the function
c) bool can be converted into integers implicitly
d) a bool value can be used in arithmetic expressions"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. For what values of the expression is an if-statement block not executed?
a) 0 and all negative values
b) 0 and -1
c) 0
d) 0, all negative values, all positive values except 1"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. Which of the two operators ++ and - work for the bool data type in C++?
a) None
b) ++
c) -
d) ++ & -"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. What is the output of the following program?

    #include <iostream>
    using namespace std;
    int f(int p, int q)
    {
        if (p > q)
            return p;
        else
            return q;
    }
    main()
    {
        int a = 5, b = 10;
        int k;
        bool x = true;
        bool y = f(a, b);
        k =((a * b) + (x + y));
        cout << k;
    }
a) 55
b) 62
c) 52
d) none of the mentioned"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "9. What is the value of p?

    #include <iostream>
    using namespace std;
    int main()
    {
        int p;
        bool a = true;
        bool b = false;
        int x = 10;
        int y = 5;
        p = ((x | y) + (a + b));
        cout << p;
        return 0;
    }
a) 0
b) 16
c) 12
d) 2"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "10. Evaluate the following
(false && true) || false || true
a) 0
b) 1
c) false
d) none of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

thirdOopsTest()
{
 clear
 counter=0
 echo "								THIRD TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. How many characters are specified in the ASCII scheme?
a) 64
b) 128
c) 256
d) none of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "2. Select the right option.
Given the variables p, q are of char type and r, s, t are of int type
1. t = (r * s) / (r + s);
2. t = (p * q) / (r + s);
a) 1 is true but 2 is false
b) 1 is false and 2 is true
c) both 1 and 2 are true
d) both 1 and 2 are false"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "3. Which of the following belongs to the set of character types?
a) char
b) wchar_t
c) only a
d) both wchar_t and char"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "4. What will be the output of this program?

    #include <iostream>
    using namespace std;
    int main()
    {
        char c = 74;
        cout << c;
        return 0;
    }
a) A
b) N
c) J
d) I"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. What is the output of this program?

    #include <stdio.h>
    int main()
    {
        char a = '\012';
 
        printf("%d", a);
        return 0;
    }
a) Compiler error
b) 12
c) 10
d) Empty"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. In C++, what is the sign of character data type by default?
a) Signed
b) Unsigned
c) Implementation dependent
d) None of the mentioned"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear


echo "7. Is the size of character literals different in C and C++?
a) Implementation defined
b) Can't say
c) Yes, they are different
d) No, they are not different"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. Suppose in a hypothetical machine, the size of char is 32 bits. What would sizeof(char) return?
a) 4
b) 1
c) Implementation dependent
d) Machine dependent"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "9. What constant defined in <climits> header returns the number of bits in a char?
a) CHAR_SIZE
b) SIZE_CHAR
c) BIT_CHAR
d) CHAR_BIT"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. The size_t integer type in C++ is?
a) Unsigned integer of at least 64 bits
b) Signed integer of at least 16 bits
c) Unsigned integer of at least 16 bits
d) Signed integer of at least 64 bits"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

forthOopsTest()
{
 clear
 counter=0
 echo "								FORTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. Which of the following is a valid floating-point literal?
 a) f287.333
 b) F287.333
 c) 287.e2
 d) 287.3.e2"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

 echo "2. What is the output of the following program?

    #include <iostream>
    using namespace std;
    int main()
    {
    	int x = -1;
        unsigned int y = 2;
 
        if(x > y) 
        {
        	cout << "x is greater";
    	}
        else 
        {
    		cout << "y is greater";
    	}      
    }
a) x is greater
b) y is greater
c) implementation defined
d) arbitrary"
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
#a
echo "3. What is the output of this program?

    #include <stdio.h>
    int main()
    {
        char a = '\012';
 
        printf("%d", a);
        return 0;
    }
a) Compiler error
b) 12
c) 10
d) Empty"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "4. What is the value of the following 8-bit integer after all statements are executed?
int x = 1;
x = x << 7;
x = x >> 7;
a) 1
b) -1
c) 127
d) Implementation defined"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. Which of these expressions will make the rightmost set bit zero in an input integer x?
a) x = x | (x-1)
b) x = x & (x-1)
c) x = x | (x+1)
d) x = x & (x+1)"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. Which of these expressions will isolate the rightmost set bit?
a) x = x & (~x)
b) x = x ^ (~x)
c) x = x & (-x)
d) x = x ^ (-x)"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. Which is correct with respect to size of the data types?
a) char > int < float
b) int < char > float
c) char < int < float
d) char < int < double"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. What will be output of this program?

    #include <iostream>
    using namespace std;
    int main()
    {
        int i = 3;
        int l = i / -2;
        int k = i % -2;
        cout << l << k;
        return 0;
    }
a) compile time error
b) -1 1
c) 1 -1
d) implementation defined"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "9. What will be output of this function?

    int main()
    {
        register int i = 1;
        int *ptr = &i;
        cout << *ptr;
	return 0;
    }
a) 0
b) 1
c) Compiler error may be possible
d) Runtime error may be possible"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. Which of the following is not one of the sizes of the floating point types?
a) short float
b) float
c) long double
d) double"
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

cTestMenu()
{
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for FIRST TEST PRACTICE OF C !			       	*"
 echo "		*			         ->  PRESS 2 for SECOND TEST PRACTICE OF C !			        *"
 echo "		*			       	 ->  PRESS 3 for THIRD TEST PRACTICE OF C !			        *"
 echo "		*				 ->  PRESS 4 for FORTH TEST PRACTICE OF C !		   	        *"
 echo "		*				 ->  PRESS 5 for FIFTH TEST PRACTICE OF C !		 	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU OF MCQ's TEST PRACTICE !	 	        *"
 echo "		*				 ->  PRESS 7 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 8 for EXIT ! 						*"
 echo "                *                                ->  PRESS  9 for PREVIOS MENU                                          *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 cTestMenuOptions 
}

cTestMenuOptions()
{
 read choiceCTest
 case $choiceCTest in
 1) clear
 firstCTest
 cTestMenu ;;
 2) clear
 secondCTest
 cTestMenu ;;
 3) clear
 thirdCTest
 cTestMenu ;;
 4) clear
 forthCTest
 cTestMenu;;
 5) clear
 fifthCTest
 cTestMenu;;
 6) clear
 testPracticeMenu;;
 7) clear
 mainMenu;;
 8) clear
 exit;;
 *) clear
 testPracticeMenu 
 esac
}

firstCTest()
{
 clear
 counter=0
 echo "								FIRST TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""

 echo "1. The format identifier %i is also used for _____ data type.
a) char
b) int
c) float
d) double"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. Which data type is most suitable for storing a number 65000 in a 32-bit system?
a) signed short
b) unsigned short
c) long
d) int"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "3. Which of the following is a User-defined data type?
a) typedef int Boolean;
b) typedef enum {Mon, Tue, Wed, Thu, Fri} Workdays;
c) struct {char name[10], int age};
d) all of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "4. What is the size of an int data type?
a) 4 Bytes
b) 8 Bytes
c) Depends on the system/compiler
d) Cannot be determined"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "5. What is the output of the following C code?

    #include  <stdio.h>
    int main()
    {
       signed char chr;
       chr = 128;
       printf("%d\n", chr);
       return 0;
    }
a) 128
b) -128
c) Depends on the compiler
d) None of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "6. What will be the output of the following C code?

    #include  <stdio.h>
    int main()
    {
        char c;
        int i = 0;
        FILE *file;
        file = fopen("test.txt", "w+");
        fprintf(file, "%c", 'a');
        fprintf(file, "%c", -1);
        fprintf(file, "%c", 'b');
        fclose(file);
        file = fopen("test.txt", "r");
        while ((c = fgetc(file)) !=  -1)
            printf("%c", c);
        return 0;
    }
a) a
b) Infinite loop
c) Depends on what fgetc returns
d) Depends on the compiler"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "7. What is short int in C programming?
a) The basic data type of C
b) Qualifier
c) Short is the qualifier and int is the basic data type
d) All of the mentioned"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "8. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        enum {ORANGE = 5, MANGO, BANANA = 4, PEACH};
        printf("PEACH = %d\n", PEACH);
    }
a) PEACH = 3
b) PEACH = 4
c) PEACH = 5
d) PEACH = 6"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "9. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        printf("C programming %s", "Class by\n%s abc", "WOW");
    }
a) C programming Class by WOW abc
b) C programming Class by\n%s abc
c) C programming Class by %s abc
d) Compilation error"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "10. In the following code snippet, character pointer str holds a reference to the string ___________

    char *str =  "abc.com\0" "training classes";
a) abc.com
b) abc.com\0training classes
c) abc.comtraining classes
d) Invalid declaration"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

secondCTest()
{
 clear
 counter=0
 echo "								SECOND TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. What will be the output of the following C code?

    #include <stdio.h>
    #define a 10
    int main()
    {
        const int a = 5;
        printf("a = %d\n", a);
    }
a) a = 5
b) a = 10
c) Compilation error
d) Runtime error"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 echo "2. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int var = 010;
        printf("%d", var);
    }
a) 2
b) 8
c) 9
d) 10"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 echo "3. What will be the output of the following C function?

    #include <stdio.h>
    enum birds {SPARROW, PEACOCK, PARROT};
    enum animals {TIGER = 8, LION, RABBIT, ZEBRA};
    int main()
    {
        enum birds m = TIGER;
        int k;
        k = m;
        printf("%d\n", k);
        return 0;
    }
a) 0
b) Compile time error
c) 1
d) 8"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "4. What will be the output of the following C code?

    #include <stdio.h>
    #define MAX 2
    enum bird {SPARROW = MAX + 1, PARROT = SPARROW + MAX};
    int main()
    {
        enum bird b = PARROT;
        printf("%d\n", b);
        return 0;
    }
a) Compilation error
b) 5
c) Undefined value
d) 2"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "5. What will be the output of the following C code?

    #include <stdio.h>
    #include <string.h>
    int main()
    {
        char *str = "x";
        char c = 'x';
        char ary[1];
        ary[0] = c;
        printf("%d %d", strlen(str), strlen(ary));
        return 0;
    }
a) 1 1
b) 2 1
c) 2 2
d) 1 (undefined value)"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "6. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        float x = 0.1;
        if (x == 0.1)
            printf("abc");
        else
            printf("Advanced C Classes");
    }
a) Advanced C Classes
b) abc
c) Run time error
d) Compile time error"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "7. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        float x = 0.1;
        printf("%d, ", x);
        printf("%f", x);
    }
a) 0.100000, junk value
b) Junk value, 0.100000
c) 0, 0.100000
d) 0, 0.999999"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "8. What will be the output of the following C code? (Initial values: x= 7, y = 8)

    #include <stdio.h>
    void main()
    {
        float x;
        int y;
        printf("enter two numbers \n", x);
        scanf("%f %f", &x, &y);
        printf("%f, %d", x, y);
    }
a) 7.000000, 7
b) Run time error
c) 7.000000, junk
d) Varies"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "9. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        double x = 123828749.66;
        int y = x;
        printf("%d\n", y);
        printf("%lf\n", y);
    }
a) 0, 0.0
b) 123828749, 123828749.66
c) 12382874, 12382874.0
d) 123828749, 0.000000"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "10. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 97;
        char y = x;
        printf("%c\n", y);
    }
a) a
b) b
c) 97
d) Run time error"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

thirdCTest()
{
 clear
 counter=0
 echo "								THIRD TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. When double is converted to float, then the value is?
a) Truncated
b) Rounded
c) Depends on the compiler
d) Depends on the standard"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "2. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        unsigned int i = 23;
        signed char c = -23;
        if (i > c)
            printf("Yes\n");
        else if (i < c)
            printf("No\n");
    }
a) Yes
b) No
c) Depends on the compiler
d) Depends on the operating system"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "3. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 23;
        char c = -23;
        if (i < c)
            printf("Yes\n");
        else
            printf("No\n");
    }
a) Yes
b) No
c) Depends on the compiler
d) Depends on the standard"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "4. What will be the output of the following C code?

    #include <stdio.h>
    void foo(const int *);
    int main()
    {
        const int i = 10;
        printf("%d ", i);
        foo(&i);
        printf("%d", i);
 
    }
    void foo(const int *i)
    {
        *i = 20;
    }
a) Compile time error
b) 10 20
c) Undefined value
d) 10"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "5. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        const int i = 10;
        int *ptr = &i;
        *ptr = 20;
        printf("%d\n", i);
        return 0;
    }
a) Compile time error
b) Compile time warning and printf displays 20
c) Undefined behaviour
d) 10"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "6. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        j = 10;
        printf("%d\n", j++);
        return 0;
    }
a) 10
b) 11
c) Compile time error
d) 0"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "7. Will the following C code compile without any error?

    #include <stdio.h>
    int main()
    {
        for (int k = 0; k < 10; k++);
	printf("Hello");
        return 0;
    }
a) Yes
b) Error
c) Depends on the C standard implemented by compilers
d) None of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "8. Which of the following declaration is not supported by C?
a) String str;
b) char *str;
c) float str = 3e2;
d) Both String str; & float str = 3e2;"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "9. Which of the following format identifier can never be used for the variable var?

    #include <stdio.h>
    int main()
    {
        char *var = "Advanced Training in C by abc.com";
    }
a) %f
b) %d
c) %c
d) %s"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo "10. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 1, y = 0, z = 5;
        int a = x && y || z++;
        printf("%d", z);
    }
a) 6
b) 5
c) 0
d) Varies"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}
forthCTest()
{
 clear
 counter=0
 echo "								FORTH TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 1, y = 0, z = 5;
        int a = x && y && z++;
        printf("%d", z);
    }
a) 6
b) 5
c) 0
d) Varies"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "2. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int x = 1, y = 0, z = 3;
        x > y ? printf("%d", z) : return z;
    }
a) 3
b) 1
c) Compile time error
d) Run time error"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "3. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 1, z = 3;
        int y = x << 3;
        printf(" %d\n", y);
    }
a) -2147483648
b) -1
c) Run time error
d) 8"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = d ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "4. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 0, y = 2, z = 3;
        int a = x & y | z;
        printf("%d", a);
    }
a) 3
b) 0
c) 2
d) Run time error"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. What will be the final value of j in the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 0, j = 0;
        if (i && (j = i + 10))
            //do something
            ;
    }
a) 0
b) 10
c) Depends on the compiler
d) Depends on language standard"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. What will be the final value of j in the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 10, j = 0;
        if (i || (j = i + 10))
            //do something
            ;
    }
a) 0
b) 20
c) Compile time error
d) Depends on language standard"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 1;
        if (i++ && (i == 1))
            printf("Yes\n");
        else
            printf("No\n");
    }
a) Yes
b) No
c) Depends on the compiler
d) Depends on the standard
#b

8. What is the difference between the following 2 codes?

    #include <stdio.h> //Program 1
    int main()
    {
        int d, a = 1, b = 2;
        d =  a++ + ++b;
        printf("%d %d %d", d, a, b);
    }
    #include <stdio.h> //Program 2
    int main()
    {
        int d, a = 1, b = 2;
        d =  a++ +++b;
        printf("%d %d %d", d, a, b);
    }
a) No difference as space doesn't make any difference, values of a, b, d are same in both the case
b) Space does make a difference, values of a, b, d are different
c) Program 1 has syntax error, program 2 is not
d) Program 2 has syntax error, program 1 is not"
#d

echo "9. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int a = 1, b = 1, c;
        c = a++ + b;
        printf("%d, %d", a, b);
    }
a) a = 1, b = 1
b) a = 2, b = 1
c) a = 1, b = 2
d) a = 2, b = 2"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int a = 1, b = 1, d = 1;
        printf("%d, %d, %d", ++a + ++a+a++, a++ + ++b, ++d + d++ + a++);
    }
a) 15, 4, 5
b) 9, 6, 9
c) 9, 3, 5
d) Undefined (Compiler Dependent)"
#d
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

fifthCTest()
{
 clear
 counter=0
 echo "								FIFTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo ""
echo "1. What will be the final value of j in the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 10, j = 0;
        if (i || (j = i + 10))
            //do something
            ;
    }
a) 0
b) 20
c) Compile time error
d) Depends on language standard"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "2. What will be the output of the following C code?

    #include <stdio.h>
    void main()
    {
        int x = 97;
        char y = x;
        printf("%c\n", y);
    }
a) a
b) b
c) 97
d) Run time error"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo "3. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int a = 10, b = 10;
        if (a = 5)
        b--;
        printf("%d, %d", a, b--);
    }
a) a = 10, b = 9
b) a = 10, b = 8
c) a = 5, b = 9
d) a = 5, b = 8"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "4. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 0;
        int j = i++ + i;
        printf("%d\n", j);
    }
a) 0
b) 1
c) 2
d) Compile time error"
#b
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "5. What will be the output of the following C code?

     #include <stdio.h>
    int main()
    {
        int i = 2;
        int j = ++i + i;
        printf("%d\n", j);
    }
a) 6
b) 5
c) 4
d) Compile time error"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "6. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int i = 2;
        int i = i++ + i;
        printf("%d\n", i);
    }
a) = operator is not a sequence point
b) ++ operator may return value with or without side effects
c) it can be evaluated as (i++)+i or i+(++i)
d) = operator is a sequence point"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "7. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int c = 2 ^ 3;
        printf("%d\n", c);
    }
a) 1
b) 8
c) 9
d) 0"
#a
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = a ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "8. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        unsigned int a = 10;
        a = ~a;
        printf("%d\n", a);
    }
a) -9
b) -10
c) -11
d) 10"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "9. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        if (7 & 8)
        printf("Honesty");
            if ((~7 & 0x000f) == 8)
                printf("is the best policy\n");
    }
a) Honesty is the best policy
b) Honesty
c) is the best policy
d) No output"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear

echo "10. What will be the output of the following C code?

    #include <stdio.h>
    int main()
    {
        int a = 2;
        if (a >> 1)
           printf("%d\n", a);
    }
a) 0
b) 1
c) 2
d) No Output"
#c
echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = c ]
 then
 counter=`expr $counter + 1`
 fi
 clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

dataStructureTestMenu()
{
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for FIRST TEST PRACTICE OF DATA STRUCTURE !	       	*"
 echo "		*			         ->  PRESS 2 for SECOND TEST PRACTICE OF DATA STRUCTURE !	        *"
 echo "		*			       	 ->  PRESS 3 for THIRD TEST PRACTICE OF DATA STRUCTURE !	        *"
 echo "		*				 ->  PRESS 4 for FORTH TEST PRACTICE OF DATA STRUCTURE !   	        *"
 echo "		*				 ->  PRESS 5 for MAIN MENU OF MCQ's TEST PRACTICE !	 	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 7 for EXIT ! 						*"
 echo "                *                                -> PRESS 8 for PREVIOS MENU !                                          *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 dsTestMenuOptions 
}

dsTestMenuOptions()
{
 read choiceDsTest
 case $choiceDsTest in
 1) clear
 firstDSTest
 dataStructureTestMenu ;;
 2) clear
 secondDSTest
 dataStructureTestMenu ;;
 3) clear
 thirdDSTest
 dataStructureTestMenu ;;
 4) clear
 forthDSTest
 dataStructureTestMenu;;
 5) clear
 testPracticeMenu;;
 6) clear
 mainMenu;;
 7) clear
 exit;;
 *) clear
 testPracticeMenu 
 esac
}

forthDSTest()
{
 clear
 counter=0
 echo "								FORTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. Which of these best describes an array?
 a) A data structure that shows a hierarchical behavior
 b) Container of objects of similar types
 c) Container of objects of mixed types
 d) All of the mentioned."
#b
 echo "Enter Your Answer(a/b/c/d) :"
 echo ""
 read answer
 if [ "$answer" = b ]
 then
 counter=`expr $counter + 1`
 fi
 clear
 echo "2. How do you initialize an array in C?
 a) int arr[3] = (1,2,3);
 b) int arr(3) = {1,2,3};
 c) int arr[3] = {1,2,3};
 d) int arr(3) = (1,2,3);"
#c

echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. What are the advantages of priority queues?
a) Easy to implement
b) Processes with different priority can be efficiently handled
c) Applications with differing requirements
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. What does ‘stack overflow’ refer to?
a) accessing item from an undefined stack
b) adding items to a full stack
c) removing items from an empty stack
d) index out of bounds exception"
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. What would be the asymptotic time complexity to add a node at the end of singly linked list, if the pointer is initially pointing to the head of the list?
a) O(1)
b) O(n)
c) θ(n)
d) θ(1"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. What would be the asymptotic time complexity to add an element in the linked list?
a) O(1)
b) O(n)
c) O(n2)
d) None of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. What is a dequeue?
a) A queue with insert/delete defined for both front and rear ends of the queue
b) A queue implemented with a doubly linked list
c) A queue implemented with both singly and doubly linked lists
d) None of the mentioned"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. What are the applications of dequeue?
a) A-Steal job scheduling algorithm
b) Can be used as both stack and queue
c) To find the maximum of all sub arrays of size k
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. What is an AVL tree?
a) a tree which is balanced and is a height balanced tree
b) a tree which is unbalanced and is a height balanced tree
c) a tree with three children
d) a tree with atmost 3 children"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Why we need to a binary tree which is height balanced?
a) to avoid formation of skew trees
b) to save memory
c) to attain faster memory access
d) to simplify storing"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

thirdDSTest()
{
 clear
 counter=0
 echo "								THIRD TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. Which of the following statements are correct with respect to Singly Linked List(SLL) and Doubly Linked List(DLL)?
a) Complexity of Insertion and Deletion at known position is O(n) in SLL and O(1) in DLL
b) SLL uses lesser memory per node than DLL
c) DLL has more searching power than SLL
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. What does ‘stack overflow’ refer to?
a) accessing item from an undefined stack
b) adding items to a full stack
c) removing items from an empty stack
d) index out of bounds exception"
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. Which of the following data structures can be used for parentheses matching?
a) n-ary tree
b) queue
c) priority queue
d) stack"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. With what data structure can a priority queue be implemented?
a) Array
b) List
c) Heap
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. Which of the following is not an application of priority queue?
a) Huffman codes
b) Interrupt handling in operating system
c) Undo operation in text editors
d) Bayesian spam filter"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. What are the advantages of priority queues?
a) Easy to implement
b) Processes with different priority can be efficiently handled
c) Applications with differing requirements
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. What is a dequeue?
a) A queue with insert/delete defined for both front and rear ends of the queue
b) A queue implemented with a doubly linked list
c) A queue implemented with both singly and doubly linked lists
d) None of the mentioned"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. What are the applications of dequeue?
a) A-Steal job scheduling algorithm
b) Can be used as both stack and queue
c) To find the maximum of all sub arrays of size k
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. What is an AVL tree?
a) a tree which is balanced and is a height balanced tree
b) a tree which is unbalanced and is a height balanced tree
c) a tree with three children
d) a tree with atmost 3 children"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Why we need to a binary tree which is height balanced?
a) to avoid formation of skew trees
b) to save memory
c) to attain faster memory access
d) to simplify storing"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi
clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

secondDSTest()
{
 clear
 counter=0
 echo "								SECOND TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. The data structure required for Breadth First Traversal on a graph is?
a) Stack
b) Array
c) Queue
d) Tree"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. A queue is a ?
a) FIFO (First In First Out) list
b) LIFO (Last In First Out) list
c) Ordered array
d) Linear tree"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. A linear collection of data elements where the linear node is given by means of pointer is called?
a) Linked list
b) Node list
c) Primitive list
d) None of the mentioned"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. What would be the asymptotic time complexity to add a node at the end of singly linked list, if the pointer is initially pointing to the head of the list?
a) O(1)
b) O(n)
c) θ(n)
d) θ(1"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. What would be the asymptotic time complexity to add an element in the linked list?
a) O(1)
b) O(n)
c) O(n2)
d) None of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. The concatenation of two list can performed in O(1) time. Which of the following variation of linked list can be used?
a) Singly linked list
b) Doubly linked list
c) Circular doubly linked list
d) Array implementation of list"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. Which of the following is false about a doubly linked list?
a) We can navigate in both the directions
b) It requires more space than a singly linked list
c) The insertion and deletion of a node take a bit longer
d) None of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. What is the time complexity of inserting a node in a doubly linked list?
a) O(nlogn)
b) O(logn)
c) O(n)
d) O(1)"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi
clear
#c
echo "9. Which of the following application makes use of a circular linked list?
a) Undo operation in a text editor
b) Recursive function calls
c) Allocating CPU to resources
d) All of the mentioned "
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Which of the following is false about a circular linked list?
a) Every node has a successor
b) Time complexity of inserting a new node at the head of the list is O(1)
c) Time complexity for deleting the last node is O(n)
d) None of the mentioned"
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

firstDSTest()
{
 clear
 counter=0
 echo "								FIRST TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. Which of these best describes an array?
a) A data structure that shows a hierarchical behavior
b) Container of objects of similar types
c) Container of objects of mixed types
d) All of the mentioned."
#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. How do you initialize an array in C?
a) int arr[3] = (1,2,3);
b) int arr(3) = {1,2,3};
c) int arr[3] = {1,2,3};
d) int arr(3) = (1,2,3);"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
{
	counter=`expr $counter + 1`
}
fi

clear
echo "3. How do you instantiate an array in Java?
a) int arr[] = new int(3);
b) int arr[];
c) int arr[] = new int[3];
d) int arr() = new int(3);"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. Which of the following is a correct way to declare a multidimensional array in Java?
a) int[][] arr;
b) int arr[][];
c) int []arr[];
d) All of the mentioned"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. When does the ArrayIndexOutOfBoundsException occur?
a) Compile-time
b) Run-time
c) Not an error
d) None of the mentioned"
#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. The postfix form of the expression (A+ B)*(C*D- E)*F / G is?
a) AB+ CD*E – FG /**
b) AB + CD* E – F **G /
c) AB + CD* E – *F *G /
d) AB + CDE * – * F *G /"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. The data structure required to check whether an expression contains balanced parenthesis is?
a) Stack
b) Queue
c) Array
d) Tree"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. Which data structure is needed to convert infix notation to postfix notation?
a) Branch
b) Tree
c) Queue
d) Stack"
#d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. What is the result of the following operation
Top (Push (S, X))
a) X
b) Null
c) S
d) None of the mentioned"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. A linear list of elements in which deletion can be done from one end (front) and insertion can take place only at the other end (rear) is known as a ?
a) Queue
b) Stack
c) Tree
d) Linked list"
#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

unixTestMenu()
{
 echo ""
 echo ""
 echo "		*********************************************************************************************************"
 echo "		*									       			        *"
 echo "		*					   MAIN MENU					        	*"
 echo "		*					  ~~~~~~~~~~~				 	        	*"
 echo "		*									  			        *"
 echo "		*				 ->  PRESS 1 for FIRST TEST PRACTICE OF LINUX/UNIX !		       	*"
 echo "		*			         ->  PRESS 2 for SECOND TEST PRACTICE OF LINUX/UNIX !		        *"
 echo "		*			       	 ->  PRESS 3 for THIRD TEST PRACTICE OF LINUX/UNIX !		        *"
 echo "		*				 ->  PRESS 4 for FORTH TEST PRACTICE OF LINUX/UNIX !	   	        *"
 echo "		*				 ->  PRESS 5 for FIFTH TEST PRACTICE OF LINUX/UNIX !	 	        *"
 echo "		*				 ->  PRESS 6 for MAIN MENU OF MCQ's TEST PRACTICE !	 	        *"
 echo "		*				 ->  PRESS 7 for MAIN MENU !						*"
 echo "		*				 ->  PRESS 8 for EXIT ! 						*"
 echo "                *                                -> PRESS 9 for PREVIOS MENU !                                          *"
 echo "		*										     		        *"
 echo "		*												        *"
 echo "		*			    (PlZzz ! Enter Your Choice & then Press ENTER Key.)		   	        *"
 echo "		*												        *"
 echo "		*********************************************************************************************************"
 unixTestMenuOptions	
}

unixTestMenuOptions()
{
 read choiceUnixTest
 case $choiceUnixTest in
 1) clear
 firstUnixTest
 unixTestMenu ;;
 2) clear
 secondUnixTest
 unixTestMenu ;;
 3) clear
 thirdUnixTest
 unixTestMenu ;;
 4) clear
 forthUnixTest
 unixTestMenu;;
 5) clear
 fifthUnixTest
 unixTestMenu;;
 6) clear
 testPracticeMenu;;
 7) clear
 mainMenu;;
 8) clear
 exit;;
 *) clear
 testPracticeMenu 
 esac
}

fifthUnixTest()
{
 clear
 counter=0
 echo "								FIFTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
 echo "1. At start of process execution, STDOUT & STDERR
a) Point to current terminal device
b) Are closed
c) Point to special files on the system     
d) None of the mentioned"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. wtmp and utmp files contain:
a) Temporary system data
b) User login-logout log
c) The user’s command execution log
d) The user’s su and sudo attempts"  
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. Which is the core of the operating system?
a) Shell
b) Kernel
c) Commands
d) Script"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi
clear
echo "4. Which one shows the name of the operating system?
a) uname -n
b) uname -r
c) uname -o
d) uname –m"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi
clear
echo "5. Which command gives the first byte where the difference is in the file1 & file2?
a) diff
b) cmp
c) comm
d) ls -a"	#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. To open a file file1 with cursor at line number 4
a) vi +num file1
b) vi +set num file1
c) vi + “set num” file1
d) vi +/se nu file1"	#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi
echo "7. How do you add (append) a file “file1” to the example.tar file
a) no you cannot add a file to example.tar
b) tar -cvf example.tar file1
c) tar -rvf file1 example.tar
d) tar -evf file1 example.tar"		#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. sed is a command typically used for
a) Perform complex calculations
b) Perform FIFO based non-blocking I/O
c) Modify/print selective contents of a file
d) None of the mentioned"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. What communication command provides communication to another user logged on by writing to the bottom of their terminal?
a) talk
b) write
c) chat
d) transmit"	#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Which screen manipulation command sets the screen back to normal?
a) tput cup
b) tput smso
c) tput rmso
d) tput blink"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear

}
forthUnixTest()
{
 clear
 counter=0
 echo "								FORTH TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. How do you add (append) a file “file1” to the example.tar file
a) no you cannot add a file to example.tar
b) tar -cvf example.tar file1
c) tar -rvf file1 example.tar
d) tar -evf file1 example.tar"		#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi
clear
echo "2. At start of process execution, STDOUT & STDERR
a) Point to current terminal device
b) Are closed
c) Point to special files on the system     
d) None of the mentioned"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. wtmp and utmp files contain:
a) Temporary system data
b) User login-logout log
c) The user’s command execution log
d) The user’s su and sudo attempts"  
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. Which is the core of the operating system?
a) Shell
b) Kernel
c) Commands
d) Script"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. ILP32 stands for
a) 32 bit Integer, Long & Pointer
b) 32 bit Integrated Long & Pointer
c) 32 bit Intelligent Long & Pointer
d) 32 bit Long & Pointer"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. How to execute ls command inside a vi editor?
a) !ls
b) :ls
c) :!ls
d) we can’t execute"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. The command syntax to display the file ‘sample.txt’ one page at a time is
a) man sample.txt>more
b) cat sample.txt<more
c) cat sample.txt|more
d) none of the mentioned"		#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. Which one shows the name of the operating system?
a) uname -n
b) uname -r
c) uname -o
d) uname –m"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi
clear
echo "9. Which command gives the first byte where the difference is in the file1 & file2?
a) diff
b) cmp
c) comm
d) ls -a"	#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. To open a file file1 with cursor at line number 4
a) vi +num file1
b) vi +set num file1
c) vi + “set num” file1
d) vi +/se nu file1"	#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
 
}
thirdUnixTest()
{
 clear
 counter=0
 echo "								THIRD TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. Write the command to display the current date in the form dd/mm/yyyy.
a) date +%d/%m/%Y
b) date +”%d/%m/%Y”
c) date +/%d/%m/20%y
d) date +”/%d/%m/20%y”"    #a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. The command syntax to display the file ‘sample.txt’ one page at a time is
a) man sample.txt>more
b) cat sample.txt<more
c) cat sample.txt|more
d) none of the mentioned"		#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. Which one shows the name of the operating system?
a) uname -n
b) uname -r
c) uname -o
d) uname –m"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. How do you add (append) a file “file1” to the example.tar file
a) no you cannot add a file to example.tar
b) tar -cvf example.tar file1
c) tar -rvf file1 example.tar
d) tar -evf file1 example.tar"		#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. How to execute ls command inside a vi editor?
a) !ls
b) :ls
c) :!ls
d) we can’t execute"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. Which command gives the first byte where the difference is in the file1 & file2?
a) diff
b) cmp
c) comm
d) ls -a"	#b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. To open a file file1 with cursor at line number 4
a) vi +num file1
b) vi +set num file1
c) vi + “set num” file1
d) vi +/se nu file1"	#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. sed is a command typically used for
a) Perform complex calculations
b) Perform FIFO based non-blocking I/O
c) Modify/print selective contents of a file
d) None of the mentioned"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. What communication command provides communication to another user logged on by writing to the bottom of their terminal?
a) talk
b) write
c) chat
d) transmit"	#a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Which screen manipulation command sets the screen back to normal?
a) tput cup
b) tput smso
c) tput rmso
d) tput blink"	#c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

firstUnixTest()
{
 clear
 counter=0
 echo "								FIRST TEST"
 echo "							       ~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. To increase the response time and throughput, the kernel minimizes the frequency of disk access by keeping a pool of internal data buffer called
a) Pooling
b) Spooling
c) Buffer cache
d) Swapping"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == c ]
then
echo right

counter=`expr $counter + 1`
echo $counter

fi

#clear
echo "2. At start of process execution, STDOUT & STDERR
a) Point to current terminal device
b) Are closed
c) Point to special files on the system     
d) None of the mentioned"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == a ]
then
counter=`expr $counter + 1`
echo $counter
fi

#clear
echo "3. wtmp and utmp files contain:
a) Temporary system data
b) User login-logout log
c) The user’s command execution log
d) The user’s su and sudo attempts"  
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == b ]
then
counter=`expr $counter + 1`
echo $counter
fi

#clear
echo "4. Which is the core of the operating system?
a) Shell
b) Kernel
c) Commands
d) Script"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == b ]
then
counter=`expr $counter + 1`
echo $counter
fi

#clear
echo "5. ILP32 stands for
a) 32 bit Integer, Long & Pointer
b) 32 bit Integrated Long & Pointer
c) 32 bit Intelligent Long & Pointer
d) 32 bit Long & Pointer"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == a ]
then
counter=`expr $counter + 1`
fi

#clear
echo "6. Single Unix Specification Version 2 provides enhanced support for
a) 16 bit Unix
b) 32 bit Unix
c) 64 bit Unix
d) 8 bit Unix"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == c ]
then
counter=`expr $counter + 1`
fi

#clear
echo " 7. Under UNIX the key board is the default input device and the monitor is the default output device
a) True
b) False"
echo "Enter Your Answer(a/b) :"
echo ""
read answer
if [ "$answer" == a ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. Which among the following interacts directly with system hardware?
a) Shell
b) Commands
c) Kernel
d) Applications"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == c ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. Applications communicate with kernel by using:
a) System Calls
b) C Programs
c) Shell Script
d) Shell"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Solaris is the name of a flavor of UNIX from
a) HP
b) IBM
c) Digital Equipment Corp
d) Sun Microsystems"
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" == d ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

secondUnixTest()
{
 clear
 clear
 counter=0
 echo "								SECOND TEST"
 echo "							       ~~~~~~~~~~~~~"
 echo ""
 echo ""
echo "1. The dmesg command
a) Shows user login logoff attempts
b) Shows the syslog file for info messages     
c) kernel log messages
d) Shows the daemon log messages"  #c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "2. The command “mknod myfifo b 4 16”
a) Will create a block device if user is root
b) Will create a block device for all users
c) Will create a FIFO if user is not root
d) None of the mentioned"  #a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "3. Which command is used to set terminal IO characteristic?
a) tty
b) ctty
c) ptty
d) stty"     #d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "4. Which command is used to record a user login session in a file
a) macro
b) read
c) script    
d) none of the mentioned"   #c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "5. Which command is used to display the operating system name
a) os
b) unix
c) kernel
d) uname"   #d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "6. Which command is used to display the unix version
a) uname -r
b) uname -n
c) uname -t
d) kernel"    #a
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = a ]
then
counter=`expr $counter + 1`
fi

clear
echo "7. Which command is used to print a file
a) print
b) ptr
c) lpr
d) none of the mentioned"   #c
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = c ]
then
counter=`expr $counter + 1`
fi

clear
echo "8. Using which command you find resource limits to the session?
a) rlimit
b) ulimit
c) setrlimit
d) getrlimit"     #b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo "9. Which command is used to display the octal value of the text
a) octal
b) text_oct
c) oct
d) od"     #d
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = d ]
then
counter=`expr $counter + 1`
fi

clear
echo "10. Which command creates an empty file if file does not exist?
a) cat
b) touch
c) ed
d) read"    #b
echo "Enter Your Answer(a/b/c/d) :"
echo ""
read answer
if [ "$answer" = b ]
then
counter=`expr $counter + 1`
fi

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "	**************************************************************************************************************************"
echo "	*					   	 You Scored $counter marks out of 10			       			 *"
echo "	**************************************************************************************************************************"
echo ""
echo ""
echo ""
echo ""
echo "							PRESS ENTER KEY TO CONTINUE"
read temp
clear
}

# CODE EXECUTION STARTING POINT 

name
#loginOption

